{- |

Module : Fhw.Pass.AddGo.AddGo

Description : Introduce Go type to trigger constants, inline constant
definitions to avoid bottlenecks due to sharing, replace constants with
go-triggered functions, and create functions to convert built-in booleans to a
Go-triggered MyBool type.

This pass introduces the Go type:

data Go = Go

and converts all constants into Go-triggered expressions.
For example:

> data List = Nil | Cons Int List
> f x = case x of
>         Nil -> 12
>         Cons y rest -> y + f Nil

is transformed into

> data List = Nil Go | Cons Int List
> _12 = \g -> 12
> f g x = case x of
>           Nil _ -> _12 g
>           Cons y rest -> y + f (Nil g)

This allows us to maintain an invariant that the evaluation of any
expression is triggered by the evaluation of at least one variable.

We first inline all top-level constant definitions, as otherwise, if
multiple, parallel functions access the same top-level constant, then
that will be an unnecessary bottleneck in the corresponding dataflow
network.

CAUTION: This pass assumes that the input program does not contain
         higher-order functions. 

-}

module Fhw.Pass.AddGo.AddGo ( addGo ) where

import Fhw.Core.Core
import Data.List
import Data.Maybe
import Data.Monoid (Any(..))
import qualified Data.Map.Lazy as M
import Control.Monad.State.Lazy

import Debug.Trace

data Env = Env {  constDcons :: [Exp] -- Set of constant data constructors
               ,  constDefs :: [Vdef] -- Set of literal constant functions
               ,  goTy :: Ty
               ,  nextBoolId :: Int
               ,  nextConstId :: Int
               ,  boolFuncs :: [Vdef]   -- Set of boolean conversion functions
               ,  goFuncs :: [Qual Var] -- names of functions that need a Go arg
               } deriving Show

addGo :: Module -> Module
addGo m@(Module mname tdefs vdefs) = if null (constDcons finalState) &&
                                        null (constDefs finalState)
                                     then m
                                     else Module mname tdefs' vdefs'
    where
      tdefs' = myBool : goDef : newTdefs
      myBool = Data (Nothing,"MyBool") []
               [Constr (Nothing,"MyFalse") [] [goType]
               ,Constr (Nothing,"MyTrue")  [] [goType]]
      goType = Tcon (Nothing, tdefName goDef)
      goDef = goTdef "Go"
      --Create unique Go data type
      goTdef go = let goName = find ((== go) . tdefName) tdefs
                      qualGo = (Nothing,go)
                  in if isNothing goName
                      then Data qualGo [] [Constr qualGo [] []]
                      else goTdef (go ++ "_")

      --Insert Go arguments and replace constants with functions
      (moddedVdefs,finalState) = runState (statefulFunc inlinedDefs) initState
      --Inline all simple constant definitions 
      inlinedDefs = map (mapVdef (inline constMap)) $
                    filter ((`M.notMember` constMap) . vdefName) vdefs
        where
          constMap = let initMap = foldr getConstDefs M.empty vdefs
                         inlineExps m' = mapExpr (inline m')
                         createMap curMap = let newMap = M.map (inlineExps curMap) curMap
                                            in if newMap == curMap
                                               then newMap
                                               else createMap newMap
                     in createMap initMap
          getConstDefs :: Vdef -> M.Map Var Exp -> M.Map Var Exp
          getConstDefs (Vdef (_,name) _ e)  = case call of
            (Dcon _ _) -> if and (zipWith (||) areVars areLits)
                          then M.insert name e
                          else id
            (Lit _) -> M.insert name e
            _ -> id
            where
              (call, args, _) = collectArgs e
              areVars = map isVar args
              areLits = map isLit args
              isVar (Var _ _) = True
              isVar _ = False
              isLit (Lit _) = True
              isLit _ = False

          inline :: M.Map Var Exp -> Exp -> Exp
          inline m' e@(Var (_,name) _) = fromMaybe e $ M.lookup name m'
          inline _ e = e
      --Collect and modify constant data constructors in type definitions, and
      --replace any Bool fields with MyBool
      (initState,newTdefs) = mapAccumL modTypes firstState tdefs
      firstState = Env { constDcons = []
                       , constDefs  = []
                       , goTy = goType
                       , nextBoolId = 1
                       , nextConstId = 1
                       , boolFuncs = [mkBoolConvert 0 goType]
                       , goFuncs = []}

      vdefs' = newMain : boolFuncs finalState ++ constDefs finalState ++ modded
      newMain = case mainFunc of
          -- If main is a lambda, this let Go binding should be inside
                 [Vdef n t e] -> let goDcon = Dcon (Nothing,"Go") goType
                                     vdef   = Vdef (Nothing,"go") goType goDcon
                                 in case e of
                                   (Lam binds e') -> Vdef n t $ Lam binds (Let [vdef] e')
                                   _ ->  Vdef n t $ Let [vdef] e
                 _ -> error "Unexpected main function problem"
      (mainFunc,modded) = partition ((=="main").vdefName) moddedVdefs

-- | Add Go fields to constant data constructors, collect the constants, and 
-- replace any Bool fields with MyBool
modTypes :: Env -> Tdef -> (Env,Tdef)
modTypes env (Data name tys cdefs) =
  let (newEnv,newCdefs) = mapAccumL helper env cdefs
      newTy             = tArrow (goTy env) (Tcon name)
      helper en (Constr n t []) = let dcon = Dcon n newTy
                                      prev = constDcons en
                                  in (en { constDcons = dcon : prev }
                                     ,Constr n t [goTy env])
      helper en (Constr n t fields) = (en,Constr n t $ map mkBoolTy fields)
  in (newEnv,Data name tys newCdefs)

-- | Generate a special function for converting Booleans to MyBooleans. This is
-- needed because a number of primitive functions return Booleans, so
-- adding a Go field to the Bool type would break these.
mkBoolConvert :: Int -> Ty -> Vdef
mkBoolConvert n goType = Vdef (Nothing,"boolConvert_" ++ show n)
                            (tArrows [goType,boolTy,myBoolTy])
                            expr
  where
    boolQ    = Just (M (P "ghc-prim",["GHC"],"Types"))
    boolTy   = Tcon (boolQ, "Bool")
    dcTy     = tArrow goType myBoolTy
    expr = Lam [Vb ("go",goType),Vb ("bool",boolTy)] $
           Case (Var (Nothing,"bool") boolTy) ("b",boolTy) myBoolTy
                [Acon (boolQ,"False") [] [] (makeEx "MyFalse")
                ,Acon (boolQ,"True")  [] [] (makeEx "MyTrue")]
    makeEx dc = App (Dcon (Nothing,dc) dcTy) (Var (Nothing,"go") goType)

-- | Transform the program with a number of passes performed in the
-- State monad.
statefulFunc :: [Vdef] -> State Env [Vdef]
statefulFunc vdefs = addingArgs =<< mapM addGos vdefs
  where
    -- | Each 'insertGoArgs' pass may introduce new
    -- functions that need Go signals. Thus, we need to
    -- repeat the pass until reaching a fixed point.
    addingArgs vds = do newDefs <- mapM insertGoArgs vds
                        if newDefs /= vds
                          then addingArgs newDefs
                          else return newDefs

-- | Perform first pass over expressions, and add Go-valued
-- parameters to any modified definitions.
addGos :: Vdef -> State Env Vdef
addGos (Vdef name ty ex) = do
  newExp <- walkExp ex
  if newExp == ex
    then return $ Vdef name ty ex
    else updateVdef (Vdef name ty newExp) =<< gets goTy

-- | First pass over expressions:
-- 1. Collect literal constants and modify constant expressions
--    to use Go triggers. 
-- 2. Insert "_" patterns for matches on constant
--    data constructors. 
-- 3. Convert Boolean patterns into MyBool and apply _boolConvert_
--    function to any primitive Boolean function.
-- 4. Change any Bool types associated with lambda bindings or local variable
--    signatures to MyBool (if not associated with a Prim function)
walkExp :: Exp -> State Env Exp
walkExp (Lam bs  e) = let newBs = map updateVbTy bs
                          updateVbTy (Tb b) = Tb b
                          updateVbTy (Vb (v,t)) = Vb (v, mkBoolTy t)
                      in fmap (Lam newBs) (walkExp e)
walkExp (Let vds e) = do newVdefs <- mapM addLetGos vds
                         newExpr  <- walkExp e
                         return $ Let newVdefs newExpr
  where
    --If this local definition needs a go argument, it will be provided
    --by the global definition carrying this one
    addLetGos :: Vdef -> State Env Vdef
    addLetGos (Vdef name ty ex) = do
      newExp <- walkExp ex
      return $ Vdef name ty newExp
walkExp (Case scrut vb _ alts) =
  do newAlts  <- mapM walkExpalt alts
     let newTy = getRetTy (head newAlts)
         newVb = let getDc (Acon (_,dc) _ _ _) = dc
                     getDc _ = ""
                 in if map getDc newAlts /= map getDc alts
                    then (fst vb, Tcon (Nothing, "MyBool"))
                    else vb
     newScrut <- walkExp scrut
     return $ Case newScrut newVb newTy newAlts
  where
    -- Add "_" vbind to capture Go field. Also modify Boolean
    -- patterns to MyBoolean.
    walkExpalt (Acon dc tbs [] e) = do
      constExps <- gets (map dconName . constDcons)
      gTy       <- gets goTy
      let newVbs = [("_", gTy) | snd dc `elem` ["True","False"]
                                 || dc `elem` constExps]
          newScrut (_,"True")  = (Nothing,"MyTrue")
          newScrut (_,"False") = (Nothing,"MyFalse")
          newScrut scr = scr
      fmap (Acon (newScrut dc) tbs newVbs) (walkExp e)
    walkExpalt (Acon c tbs vbs e) = fmap (Acon c tbs (map (\(v,t) -> (v, mkBoolTy t)) vbs)) (walkExp e)
    walkExpalt (Alit l e)         = fmap (Alit l) (walkExp e)
    walkExpalt (Adefault e)       = fmap Adefault (walkExp e)

    getRetTy (Acon _ _ _ e) = exprType e
    getRetTy (Alit _ e)     = exprType e
    getRetTy (Adefault e)   = exprType e

    dconName (Dcon n _) = n
    dconName _ = (Nothing,"")
walkExp e = let (call,args,tyArgs) = collectArgs e
                (retTy,_) = collectArgTypes $ exprType call
            in do newArgs <- mapM walkExp args
                  boolId  <- gets nextBoolId
                  constId <- gets nextConstId
                  goType  <- gets goTy
                  constDcs  <- gets constDcons
                  let goArg   = Var (Nothing,"go") goType
                      newCall = updateVarTy call
                      funcExp = mkFuncApp newCall tyArgs newArgs
                  case newCall of
                    Lit (Literal (Lint int) _) ->
                      let litName = (Nothing,"const_"++show int++"_"++show constId)
                      in mkLit litName newCall retTy
                    Lit (Literal (Lchar char) _) -> do
                      let litName = (Nothing,"const_"++[char,'_']++show constId)
                          newTy = tArrow goType retTy
                          litDef = Vdef litName newTy $
                                   Lam [Vb ("go",goType)] newCall
                      modify (\s -> s { constDefs = litDef : constDefs s
                                      , nextConstId = constId + 1 })
                      return $ mkFuncApp (Var litName newTy) [] [goArg]
                    Var n _ ->
                      if isPrimPrim n && getTcon retTy == primBool
                      --apply Bool-to-MyBool function
                      then do let newBoolFunc = mkBoolConvert boolId goType
                              modify (\s -> s { nextBoolId = boolId + 1,
                                                boolFuncs = newBoolFunc : boolFuncs s })
                              return $ mkFuncApp (makeVar newBoolFunc) [] [goArg,funcExp]
                      else return funcExp
                    Dcon name _ -> return $
                      let newTy = tArrow goType retTy
                          newBoolTy = tArrow goType myBoolTy
                          newDc = mkDcon (snd name)
                          mkDcon "False" = Dcon (Nothing,"MyFalse") newBoolTy
                          mkDcon "True"  = Dcon (Nothing,"MyTrue") newBoolTy
                          mkDcon _       = Dcon name newTy
                      in if getTcon retTy == primBool || newDc `elem` constDcs
                       --Add Go argument to constant Dcon
                       then mkFuncApp newDc [] [goArg]
                       else funcExp
                    _ -> return funcExp
  where primBool = (Just (M (P "ghc-prim",["GHC"],"Types")),"Bool")
        isPrimPrim (Just (M (P "ghc-prim",["GHC"],"Prim")), _) = True
        isPrimPrim _ = False
        updateVarTy (Var v t) = Var v $ mkBoolTy t
        updateVarTy e' = e'
        makeVar (Vdef n ty _) = Var n ty
        mkLit litName newCall retTy = do
          goType <- gets goTy
          constId <- gets nextConstId
          let goArg = Var (Nothing,"go") goType
              newTy = tArrow goType retTy
              litDef = Vdef litName newTy $ Lam [Vb ("go",goType)] newCall
          modify (\s -> s { constDefs = litDef : constDefs s
                          , nextConstId = constId + 1 })
          return $ mkFuncApp (Var litName newTy) [] [goArg]


-- | Peform another pass over expressions.
-- The result may require adding a Go-valued parameter to this 
-- variable definition. 
insertGoArgs :: Vdef -> State Env Vdef
insertGoArgs (Vdef n t ex) = do
  newExp <- goArgExp ex
  goType <- gets goTy
  let hasGoArg = elem goType $ snd $ collectArgTypes t
  if newExp == ex   || --No modifications done
     hasGoArg          --Already has a Go parameter
    then return $ Vdef n t newExp
    else updateVdef (Vdef n t newExp) goType

-- | Add "go" argument to any calls to functions that build constant
-- values.
goArgExp :: Exp -> State Env Exp
goArgExp (Let vds e) =
  do newVdefs <- mapM insertLetGoArgs vds
     newExpr  <- goArgExp e
     return $ Let newVdefs newExpr
  where
    insertLetGoArgs (Vdef n t ex) = do
      newExp <- goArgExp ex
      let (retTy,argTys) = collectArgTypes t
          newTy = tArrows $ map mkBoolTy (argTys ++ [retTy])
      return $ Vdef n newTy newExp
goArgExp (Case scrut vb ty alts) =
  do newAlts <- mapM goArgExpalt alts
     newScrut <- goArgExp scrut
     return (Case newScrut vb ty newAlts)
  where
    goArgExpalt (Alit l e)         = fmap (Alit l) (goArgExp e)
    goArgExpalt (Adefault e)       = fmap Adefault (goArgExp e)
    goArgExpalt (Acon c tbs vbs e) = fmap (Acon c tbs vbs) (goArgExp e)
goArgExp (Lam bs e) = fmap (Lam bs) (goArgExp e)
goArgExp e = let (call,args,tyArgs) = collectArgs e
                 (retTy,argTys)     = collectArgTypes $ exprType call
             in do funcs   <- gets goFuncs
                   goType  <- gets goTy
                   newArgs <- mapM goArgExp args
                   let newEx = mkFuncApp call tyArgs newArgs
                       goArg = Var (Nothing,"go") goType
                       newTy = tArrows $ goType : argTys ++ [retTy]
                   return $ case call of
                    Var n _ -> if n `elem` funcs && goArg `notElem` newArgs
                                  then let newVar = Var n newTy
                                           allArgs = goArg : newArgs
                                       in mkFuncApp newVar tyArgs allArgs
                                  else newEx
                    _ -> newEx

-- | Add a go parameter to a variable definition, update its
-- type, and add the name to our state.
updateVdef :: Vdef -> Ty -> State Env Vdef
updateVdef vdef@(Vdef n@(_,"main") t ex) _
  | "Bool" == snd (getTcon $ fst $ collectArgTypes t) =
     return $ Vdef n (Tcon (Nothing,"MyBool")) ex
  | otherwise = return vdef
updateVdef (Vdef n ty ex) goType
  | not $ getAny $ mapExprMonoid hasGo ex =
      let newTy = tArrows $ map mkBoolTy (argTys ++ [retTy])
      in return $ Vdef n newTy ex
  | otherwise = do modify (\s -> s { goFuncs = addNew n $ goFuncs s })
                   let newTy = tArrows $ map mkBoolTy (goType : argTys ++ [retTy])
                       newVb = Vb ("go",goType)
                   return $ Vdef n newTy (case ex of
                             Lam bs e -> Lam (newVb : bs) e
                             _        -> Lam [newVb]         ex)
  where (retTy,argTys) = collectArgTypes ty

        hasGo :: Exp -> Any
        hasGo (Var (_,name) _) = Any (name == "go")
        hasGo _ = Any False

-- | Convert all Bool types to MyBool in a signature
mkBoolTy :: Ty -> Ty
mkBoolTy ty = let (retTy, argTys) = collectArgTypes ty
                  mkBools t = if "Bool" == snd (getTcon t)
                              then Tcon (Nothing,"MyBool")
                              else t
              in tArrows $ map mkBools (argTys ++ [retTy])

addNew :: Eq a => a -> [a] -> [a]
addNew newVal vals = if newVal `elem` vals
                     then vals
                     else newVal : vals

-- | Type constructor for my new boolean type
myBoolTy :: Ty
myBoolTy = Tcon (Nothing, "MyBool")

