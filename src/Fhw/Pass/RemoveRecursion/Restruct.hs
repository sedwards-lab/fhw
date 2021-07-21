{- |
Module : Fhw.Pass.RemoveRecursion.Restruct
Description : This module contains the transforms after the Combine and
Linearize phases, including adding continuations and extracting continuations.
Those phases are closely dependent on each others and can't be seperated,
hence they are put into a same module here.
-}
module Fhw.Pass.RemoveRecursion.Restruct where

import Fhw.Core.Core
import Fhw.Pass.RemoveRecursion.Utils

import Data.Maybe ()
import Data.Tuple (swap)
--import Debug.Trace

restructVdefs :: [Vdef] -> [Tdef] -> ([Tdef], [Vdef])
restructVdefs vdefs tdefs = (tdefs ++ concat tdefss, concat vdefss)
  where
  (tdefss, vdefss) = unzip $ map trans vdefs

-- | Generate Calls and Rets for recursive functions.
trans :: Vdef -> ([Tdef], [Vdef])
trans vdef@(Vdef (mname, fname) fty expr) =
    if exprRecursiveness fname expr /= Recursive 
    then ([], [vdef])
    else (newtys, newfns)
  where
  --Type of this function's result
  retTy = last $ uncurryTapp fty

  --Constructor names encoding components of recursive functions
  callName  = "call_" ++ fname 
  retName   = "ret_" ++ fname 

  -- Push let expressions into other lets or case expressions that either
  -- contain recursive calls or are single threads of execution 
  -- (i.e. no multiple alternatives), and replace recursive calls with new 
  -- "Call_" constructor
  expr_renamed = mapExpr pushExp $
                 mapExpr (f fname callName) expr
    where
      f oldVar newVar e@(Var (_,n) ty) | n == oldVar = Var (Nothing,newVar) ty
                                       | otherwise = e
      f _ _ e = e
  pushExp letEx@(Let [Vdef v t localEx] e) =
    case localEx of
      Let vdefs ex -> push $ Let vdefs $ makeLet ex
      Case sc ty vb alts | length alts == 1 || 
                           any isRecursive alts -> Case sc ty vb $ map helper alts
      _ -> letEx
    where
      makeLet newE = Let [Vdef v t newE] e
      push = mapExpr pushExp

      isRecursive (Adefault oe)   = exprRecursiveness callName oe /= Nonrecursive
      isRecursive (Alit _ oe)     = exprRecursiveness callName oe /= Nonrecursive
      isRecursive (Acon _ _ _ oe) = exprRecursiveness callName oe /= Nonrecursive

      helper (Acon qd tb vb oe) = Acon qd tb vb $ push (makeLet oe)
      helper (Alit olit oe)     = Alit olit     $ push (makeLet oe)
      helper (Adefault oe)      = Adefault      $ push (makeLet oe)

  pushExp e = e

  existed_variables = snd . unzip $ getVariables expr_renamed
  -- New names to use in generated expressions
  cArgName  = getNextName "sc" existed_variables
  cfargname = getNextName "scfarg" existed_variables
  rtargname = getNextName "srtarg" existed_variables
  cArgTypeName = "CT" ++ fname
  bottomOfStackLabel = "L" ++ fname ++ "sbos"

  -- Expressions and types used in following definitions
  cArgTypeRef = Tcon (Nothing,cArgTypeName)  
  rtargvar = Var (Nothing, rtargname) retTy

  --Continuation variable expression
  scVar = Var (Nothing, cArgName) cArgTypeRef

  -- Find "return" expressions (i.e. the tail expression for any alternatives),
  -- and add continuation arguments and update types appropriately.
  impl3 = rtc callName retName scVar expr_renamed

  -- conts:  For f_fc and ContType construction.
  -- impl4:  For f_fr function.
  (conts, impl4) = 
    separateRecursions retName scVar callEx vars rtargvar impl3
    where
      vars = cArgName : existed_variables
      callEx = Var (Nothing,callName) frTy

  extraTys = [cArgTypeRef,retTy]

  --Dealing with Calls; Only add continuation args and tys if this function
  --  is not tail-recursive.
  frTy = curryTapp $ its ++ extraTys
  its = init $ uncurryTapp fty
  fr = Vdef (Nothing, callName) frTy (Lam binds cont4)
    where
    Lam binds4 cont4 = impl4 -- TODO: irrefutable pattern problematic.
    binds = binds4 ++ [Vb (cArgName, cArgTypeRef)]

  cArgTypeOpts :: [Cdef]
  cfbranches :: [Alt]
  (cArgTypeOpts, cfbranches) = unzip conts
  bosCdef = Constr (Nothing,bottomOfStackLabel) [] []
  cArgType = Data (Nothing, cArgTypeName) [] (bosCdef : cArgTypeOpts)
  returnBranch = Acon (Nothing, bottomOfStackLabel) [] [] rtargvar
  cfimpl = Lam [Vb (rtargname, retTy),Vb (cfargname, cArgTypeRef)] $
                Case (Var (Nothing, cfargname) cArgTypeRef)
                    ("dummy", cArgTypeRef)
                    retTy (returnBranch : cfbranches)

  --Dealing with Rets
  fcTy = curryTapp $ retTy : extraTys
  fc = Vdef (Nothing, retName) fcTy cfimpl

  -- The wrapper of the top level function. Call the combined function here.
  wrapperf = let Lam obinds _ = expr
                 binds = obinds
                 bosLiteral = Dcon (Nothing, bottomOfStackLabel) cArgTypeRef

                 callExpr' = foldl App (Var (Nothing, callName) frTy) $
                             map (\(Vb (v, t)) -> Var (Nothing, v) t) binds 
                                 ++ [bosLiteral]

                 fimpl = Lam binds callExpr'
             in Vdef (mname, fname) fty $ uniqueNamings fimpl

  newfns = [fc, fr, wrapperf]
  newtys = let noCdefs (Data _ _ cdefs) = null cdefs
           in if noCdefs cArgType then [] else [cArgType]


-- | Add a continuation argument to any call_* expressions found in
--   tail-position, and, if we get to a tail-position expression e without
--   seeing any let-bound call_* expressions on the way, replace e with
--   ret_* e cpv.
rtc :: Var -> Var -> Exp -> Exp -> Exp
rtc callName retName cpv expr = case expr of
    Lam binds expr1 -> Lam binds $ fn False expr1
    _ -> error "Only expecting recursive functions in rtc"
  where
  --The boolean is used to remember if we've seen a call_* expression
  --on the way to any tail-position expression
  fn :: Bool -> Exp -> Exp
  fn b (Case scrut vb ty alts) = Case scrut vb ty $ map helper alts
    where
      helper (Adefault e) = Adefault $ fn b e
      helper (Alit l e) = Alit l $ fn b e
      helper (Acon dc tbs vbs e) = Acon dc tbs vbs $ fn b e
  fn b (Let vdefs e) = if any isTailCall vdefs
                       then Let vdefs $ fn True e
                       else Let vdefs $ fn b e
    where
      isTailCall (Vdef _ _ vdefExpr) = 
        case collectArgs vdefExpr of
          (Var (_,fevar) _,_,_) -> fevar == callName
          _ -> False
  fn b e | fevar == callName = callExp -- Add cpv to this tail-call
         | otherwise = if b 
                       then e --already saw a call_*, so this expression
                              --will be wrapped in a ret_* by separateRecursions
                       else retExp
        where
        callExp = mkFuncApp (Var (Nothing, callName) newfeTy) [] (as ++ [cpv])
        retExp = mkFuncApp (Var (Nothing, retName) fcty) [] [e,cpv]

        fcty = curryTapp $ map exprType [e,cpv,e]
        newfeTy = tArrows $ map exprType as ++ [exprType cpv,feTyRt]
        feTyRt = last $ uncurryTapp $ exprType fe

        (fe, as, _) = collectArgs e
        fevar = case fe of
          (Var (_, v) _) -> v
          _ -> ""


type Rtv = ([(Cdef, Alt)],
            Exp)

type Accum = (Int,              -- Accumulative integer for naming new variable
              [(Cdef, Alt)])    -- For FibCont and fibc.

-- Generate continuation variants at call_* points, and store the expressions
-- following those points in what will become the bodies of new case alternatives
-- matching on the generated variants.
separateRecursions :: Var -> Exp -> Exp -> [Var] -> Exp -> Exp -> Rtv
separateRecursions retName cpv callEx variables returnedValue e0 =
    (\((_, cres), e) -> (cres, e)) $ 
    postTraversal fn (0,[]) e0
  where
  Var (_,fname) fty = callEx
  (contName,fcontsumtype) = case cpv of
                              Var (_,n) t -> (n,t)
                              _ -> error "Expecting variable continuation name"

  fn :: Accum ->  Exp -> (Accum, Exp)
  fn (cnum,cresults) expr = case expr of
    Let [Vdef (mname, rname) _ e] cont 
      | call == Just fname -> 
        --Deal with truly recursive calls
        ((cnum + 1, newResult : cresults),newexpr)
      where
      (call, as) = case collectArgs e of
                     (Var (_,f) _, args, _) -> (Just f, args)
                     _ -> (Nothing, [])

      free_variables :: [(Ty, Var)]
      free_variables = filter (\(_, v) -> v `elem` variables && v /= rname)
                       $ cfvAll cont
      --We will add the continuation variable if this is true
      addContVar = contName `notElem` map snd free_variables

      newDc = "L" ++ fname ++ show cnum  -- New data opt for continuation.
      cdef = Constr (Nothing, newDc) [] $ if addContVar
               then freeTys ++ [fcontsumtype]
               else freeTys

      cbranch :: Alt
      cbranch = let newLet = Let [Vdef (mname, rname) retTy returnedValue] cont
                    vbs = map swap free_variables
                    dconName = (mname, newDc)
                in if addContVar
                   then Acon dconName [] (vbs ++ [(contName,fcontsumtype)]) $
                        Let [Vdef (Nothing,"contRet_"++show cnum) retTy newLet] retExp
                   else Acon dconName [] vbs $ mapReturn addRet newLet

        where
        addRet e = case collectArgs e of
                    (Var (_,n) _,args,_) | n == fname -> e
                    _ -> mkFuncApp (Var (Nothing, retName) fcty) [] [e,cpv]
        retTy = exprType returnedValue
        retExp = App (App (Var (Nothing, retName) fcty) 
                          (Var (Nothing, "contRet_"++show cnum) retTy)) cpv
        fcty = curryTapp [retTy,fcontsumtype,retTy]

      freeVar = map (\(t, v) -> Var (Nothing, v) t) free_variables
      freeTys = map fst free_variables
      contArg = mkFuncApp newDcFunc [] $ if addContVar
                  then freeVar ++ [Var (Nothing, contName) fcontsumtype]
                  else freeVar
      contTy = tArrows (freeTys ++ [fcontsumtype])
      newDcFunc :: Exp
      newDcFunc = Dcon (Nothing, newDc) contTy

      newVar = Var (Nothing,fname) fty
      newcall = mkFuncApp newVar [] $
                as ++ [Var (Nothing, "sca" ++ show cnum) fcontsumtype]

      newexpr = Let [Vdef (Nothing, "sca" ++ show cnum) fcontsumtype contArg] newcall
      newResult = (cdef,cbranch)
    _ -> ((cnum,cresults), expr)

