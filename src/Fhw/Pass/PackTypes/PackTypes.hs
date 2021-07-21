{- |
Module : Fhw.Pass.PackTypes.PackTypes
Description : Pack recursive datatypes and the functions applied to them.

We assume that the input program satisfies the following properties:
  --No polymorphism
  --All function definitions are global  
  --No anonymous functions

This module has 6 main stages (each marked in code below as (#)):
  1. Find and pack recursive datatypes (call them 'recTypes').
  2. Generate 'unpack' and 'pack' conversion functions for each recType.
  3. Replace every expression e of recType with (unpack (pack e)).
  4. "Hoist" appropriate pack and unpack calls into definitions.
  5. Inline any unpack calls in the context (case unpack e of -> ...).
  6. Inline recursive function calls by the packing factor. 
  7-8. Perform code motion to reveal new simplifications and enable further
       transformations.
  9. Inline all packs applied to data constructor expressions.

Cleanup passes entail the following optimizations:
  1. Case-of-case
  2. Case-of-default
  3. Case-of-pattern
  4. Inline single-use lets.
-}
module Fhw.Pass.PackTypes.PackTypes (pack) where
import Debug.Trace

import Fhw.Core.Core 
import Fhw.Haskgen.DeadCode (removeCode)
import Fhw.Pass.AnnoteTypes.AnnotateTypes
import Fhw.Pass.UniquifyNames.UniquifyNames
import Fhw.Pass.PackTypes.Environment
import Fhw.Pass.PackTypes.Generated (generatePackedTypes, genConversionFuncs)
import Fhw.Pass.PackTypes.Transformation (wrapFunctions
                                         ,hoistPacks
                                         ,hoistUnpacks
                                         ,hoistConstrPacks)

import Data.Maybe
import Data.Monoid
import qualified Data.Map as Map
import Data.Traversable (traverse)
import Data.List

import Control.Arrow ((***), first, second)
import Control.Monad.Trans.Maybe
import Control.Monad.State.Lazy
import Control.Monad.Reader
import Control.Applicative ((<$>))

-- | Apply the packing transformation to this module
pack :: Int -> Bool -> Bool -> Module -> Module
pack depth debugOn inlineAllRecs origMod@(Module mn tdefs vdefs) = 
  if null packedPairs 
    then origMod 
    else flip removeCode ["main"] . annotateTypes $ 
         Module mn finalTdefs (finalVars ++ convFuncs staticInfo)
  where
   --(1) Generate packed versions of recursive data types with only
   --two variants: base and recursive.
   newTypes = generatePackedTypes depth tdefs 
   packedPairs = filter bundledType newTypes
    where bundledType (_,l) = length l == 2
      -- (above) if generatePackedTypes returned [t1,t2], t1 is an unpacked
      --         type and t2 is the corresponding packed type. 

   --(2) Generate pack/unpack conversion functions.
   funcs = genConversionFuncs $ map listsToPairs packedPairs 
    where
     listsToPairs (d,[uTy,pTy]) = (d,(uTy,pTy))
     listsToPairs _ = error "Problem with listsToPairs"
  
   --populate the symbol table
   symbolTable = foldl insertSymTab Map.empty vdefs

   --collect the read-only info we need
   staticInfo = foldl readOnly emptyInfo (map Left newTypes ++ map Right funcs)

   readOnly info (Left (_,[Data utc _ _,Data ptc _ _])) = 
     info {typePairs = (Tcon utc,Tcon ptc) : typePairs info}
   readOnly info (Right vds@[Vdef pname pty _,Vdef uname uty _]) =
     let genType = getTycon . head . snd . collectArgTypes
         pfirstTy = genType pty
         uFirstTy = genType uty
         pCall = Var pname pty
         uCall = Var uname uty
     in info {packExps = (pfirstTy,pCall) : packExps info
             ,unpackExps = (uFirstTy,uCall) : unpackExps info
             ,convFuncs = vds ++ convFuncs info}
   readOnly info _ = info

   --TODO: We are no longer applying the same packing factor to 
   --all types (see Generated.hs), so we probably shouldn't inline all recursive
   --functions the same number of times...
   --Apply all other steps of algorithm
   (finalTdefs, finalVars) = 
    runReader (evalStateT (transform depth debugOn inlineAllRecs $ 
                  concatMap snd newTypes) symbolTable) staticInfo

-- | Given a packing factor and the original set of type definitions, apply all
-- transformations to pack the program by the given factor, returning the
-- modified type and variable definitions as the final result. We perform a
-- uniquify pass after any transformation involving inlining (to prevent name
-- clashes), and an optimizing "cleanUp" pass after each step of
-- transformations (except (3) below, since our theorem would reverse that step
-- completely).
transform :: Int -> Bool -> Bool -> [Tdef] -> Env ([Tdef],[Vdef])
transform depth debugOn inlineAllRecs tdefs = do
  cleanUp -- remove any weird case-of-default situations
  origMap <- get
  --(3) Replace every packable expression e with (unpack (pack e))
  tableTraverse (modifyExp $ mapExprM wrapFunctions)
  --(4) Perform "hoisting" steps of algorithm, which can also modify
  --type definitions with packable types as fields.
  tableTraverse (hoistUnpacks <=< hoistPacks)
  newTdefs <- hoistConstrPacks tdefs
  cleanUp

  preInlineMap <- get
  --(5) Inline any unpack calls serving as case scrutinees. Sometimes one pass
  --followed by uniquify and cleanUp can reveal more unpack calls to inline,
  --so we repeat this pass until that's no longer the case.
  inlineUnpacks

  --Uncomment if using rollback technique
  --preRecMap <- get

  --(6) Inline recursive functions n times (given a packing factor of n). 
  tableTraverse (inlineByPack origMap preInlineMap) >> uniquify >> 
    tableTraverse (modifyExp $ modExpApp beta) >> cleanUp


  --(7) If a recursive function pattern matches on a packable input and 
  --that input's tail, we will now have more unpack calls in case scrutinees.
  --After inlinining all of them here, we will only have unpack calls applied to
  --tails (since that's where they occur in unpack's definition). When we push pack
  --calls in the next step, inlining them will cancel out these lingering unpacks.
  unless inlineAllRecs inlineUnpacks


  --(8) Perform code motion on expressions applied to case or let expressions
  --to reveal any new simplifications.
  tableTraverse (modifyExp $ mapExprM pushDownApp) >> cleanUp


  --(9) Inline any top-level variables of the form (v = pack e), where
  --e is a data constructor expression.
  tableTraverse (modifyExp $ mapExprM inlinePackedVars) >> uniquify >> cleanUp

  --(10) Inline all packs applied to data constructor expressions.
  pExps <- asks (map snd . packExps)
  tableTraverse (modifyExp $ modExpApp (inlinePack pExps)) >> uniquify >> cleanUp


  --(11) For any let-defined binding (let v = unpack e in e'), if all uses of
  --v in e' are of the form (pack v), remove the unpack and pack calls (i.e. apply
  --our theorem across the expressions).
  tableTraverse (modifyExp theoremBindings) >> cleanUp

  --This is a heuristic to roll-back any functions
  --that were inlined and generated too many recursive calls.
  --TODO: Maybe roll back to a smaller packing factor?
  --tableTraverse (countThem preRecMap) >> uniquify >> cleanUp

  --(12) Optimizations: removing redundant dcon expressions and lifting 
  --function call expressions that are identical across case alternatives
  tableTraverse (modifyExp $ modExpCase redundantDcon) >> cleanUp
  tableTraverse (modifyExp $ modExpCase redundantCall) >> uniquify 
  tableTraverse (modifyExp inlineSameCalls)
  --If main returns a packable type, we replace it's definition (e) with
  --(unpack e), enabling comparison of output against gold standard regardless
  --of packing factor.
  when debugOn (do
    symTable <- get
    let mainDef = getTable "main" symTable
    unpackCall <- getUnpackCall $ fst $ collectArgTypes $ getTy mainDef
    case unpackCall of
      Nothing -> return ()
      Just uCall -> let newTableEntry = mainDef{getExp = App uCall (getExp mainDef)
                                               ,getTy = unpackTy} 
                        unpackTy = fst $ collectArgTypes $ exprType uCall in
                    put (Map.insert "main" newTableEntry symTable))
  newVdefs <- reconstructVdefs
  return (newTdefs, newVdefs)
  where
    --Apply a monadic function to each function's symbol table in our
    --current environment, storing the result back in our state
    tableTraverse f = put =<< traverse f =<< get

    {-FOR DEBUGGING
    --
    showThem table = return $ trace ("Now expression " ++ getName table ++ 
                                     " has expression " ++ show (getExp table)) 
                                     table
                                     -}

    --Apply a monadic function to a definition drawn
    --from our symbol table.
    modifyExp f table = do newEx <- f (getExp table)
                           return table{getExp = newEx}

    --inline recursive functions by the packing factor, if the function
    --is a ``good producer'' (defined at function isGoodProducer) or if
    --it's size, after inlining unpack calls, is below the given threshold
    --(such function's should be quite small if they don't take packable
    --types as arguments)
    inlineByPack origMap preInlineMap table = do 
      tys <- asks (map fst . typePairs)
      if shouldInline tys || 25 >= totSize
        then do newEx <- modExpCase (inlineRec preInlineMap depth inlineAllRecs name) ex
                return $ table{getExp = newEx}
        else return $ --trace ("Ignoring " ++ name )
                      table
      where
        totSize = getSum $ getSize ex 
        ex = getExp table
        name = getName table
        shouldInline tys = isGoodProducer tys (Map.lookup name origMap) 
        --Calculating the "size" of a definition using Santos's inlining strategy:
        --"Compilation by Transformation in Non-Strict Functional Languages"
        getSize (Lam bs e) = Sum (length bs) `mappend` getSize e
        getSize (App e1 e2) = getSize e1 `mappend` getSize e2
        getSize (Let vdefs e) = getSize e `mappend` mconcat (map helper vdefs)
          where
            helper (Vdef _ _ e') = Sum 1 `mappend` getSize e'
        getSize (Case scrut _ _ alts) = case scrut of
          Var _ _ -> mconcat (map helper alts)
          _ -> getSize scrut `mappend` mconcat (map helper alts)
          where
            helper (Adefault e) = getSize e
            helper (Alit _ e) = getSize e
            helper (Acon dc _ _ e) | isPrim dc = getSize e
                                   | otherwise = Sum 1 `mappend` getSize e
        getSize _ = Sum 1

    {-TODO: Rewrite this documentation!
    -- If a function has more than 64 calls after applying the
    -- algorithm, roll it back to its form after inlining unpack calls
    -- in case expressions. Then apply all steps that would occur
    -- after inlining recursive calls. This is meant as a heuristic to
    -- avoid code growth that can make our back-end crash.
    countThem preRecMap table = let total = countCalls ex in
                                if total >= 64 
                                  then let oldExp = trace ("Rolling back " ++ name ++ " which had total size " ++ show totSize) getExp $ getTable name preRecMap
                                       in do
                                          newExp' <- mapExprM pushDownApp oldExp 
                                          newExp <- mapExprM theorem newExp' 
                                          pExps <- asks (map snd . packExps)
                                          finalEx <- modExpApp (inlinePack pExps) newExp
                                          return table{getExp = finalEx}
                                  else return table
      where
        ex = getExp table
        name = getName table
        countCalls = getSum . mapExprMonoid count 
          where
            count :: Exp -> Sum Integer
            count (Var (_,n) _) = if n == name then Sum 1 else Sum 0
            count _ = Sum 0
        totSize = getSum $ getSize ex 
        getSize (Lam bs e) = Sum (length bs) `mappend` getSize e
        getSize (App e1 e2) = getSize e1 `mappend` getSize e2
        getSize (Let vdefs e) = getSize e `mappend` mconcat (map helper vdefs)
          where
            helper (Vdef _ _ e') = Sum 1 `mappend` getSize e'
        getSize (Case scrut _ _ alts) = case scrut of
          Var _ _ -> mconcat (map helper alts)
          _ -> getSize scrut `mappend` mconcat (map helper alts)
          where
            helper (Adefault e) = getSize e
            helper (Alit _ e) = getSize e
            helper (Acon dc _ _ e) | isPrim dc = getSize e
                                   | otherwise = Sum 1 `mappend` getSize e
        getSize _ = Sum 1
  
    -}

    --apply this step of the algorithm, uniquify names, cleanUp, and repeat
    --until there are no more unpack calls as case scrutinees
    inlineUnpacks = do s <- get
                       newS <- traverse (modifyExp (modExpCase inlineUnpack)) s
                       unless (s == newS) $ do put newS
                                               uniquify
                                               cleanUp
                                               inlineUnpacks

    --Apply various reductions after inlining
    cleanUp = do s <- get
                 newS <- traverse cleaner s
                 put newS
                 unless (newS == s) cleanUp
    cleaner = modifyExp inlineLets <=<
              modifyExp (modExpCase caseReduction) <=<
              modifyExp (mapExprM theorem)
                              
-- | Apply our theorem: (unpack (pack e)) == e OR (pack (unpack e)) == e
theorem :: Exp -> Env Exp
theorem ex | null expArgs = return ex
           | otherwise = do
  convs <- asks (map vdefName . convFuncs)
  if var1 `elem` convs && var2 `elem` convs
     && argTy1 == retTy2
   then removeCalls ex
   else return ex
  where
    (call1,expArgs,_) = collectArgs ex
    (call2,_,_) = collectArgs (head expArgs)
    var1 = getVarName call1
    var2 = getVarName call2
    argTy1 = let argTys = snd $ collectArgTypes $ exprType call1
             in if null argTys
                  then error  "Expecting a function in theorem"
                  else head argTys
    retTy2 = fst $ collectArgTypes $ exprType call2

    removeCalls (App _ (App _ e)) = return e
    removeCalls e = return e

-- | Inline any recursive function calls found 
inlineRec :: SymTab -> Int -> Bool -> Var -> Exp -> Env Exp
inlineRec origMap depth inlineAllRecs name (Case scrut vb@(_,scrutTy) ty alts) = do
  isPackedScrut <- isJust <$> getUnpackCall scrutTy
  if not isPackedScrut
    then processCase
    else case alts of
      [base,unpackedAlt,packedAlt] -> 
        let recurse (Acon dc tbs vbs e) = 
              Acon dc tbs vbs <$> modExpCase nextCall e
            recurse _ = error "Unexpected alternative form in inlineRec"
        in do newBase <- recurse base
              newPacked <- recurse packedAlt
              newUnpacked <- if inlineAllRecs then recurse unpackedAlt
                                              else return unpackedAlt
              return $ Case scrut vb ty [newBase,newUnpacked,newPacked]
      _ -> error "Unexpected number of alternatives for packed scrutinee"
  where
    nextCall = inlineRec origMap depth inlineAllRecs name
    processCase = do 
      newScrut <- modExpCase nextCall scrut
      newAlts <- mapM (modAltEx (modExpCase nextCall)) alts
      return $ Case newScrut vb ty newAlts
inlineRec origMap depth inlineAllRecs name ex = 
  if getVarName call == name && length expArgs == length argTys
    then do isPackCall <- mapM checkPacks expArgs
            inlinedExp <- if not inlineAllRecs && or isPackCall
                          then return $ getExp $ getTable name origMap
                          else gets (getExp . getTable name) 
            fmap (\f -> mkFuncApp f tyArgs expArgs) $
              if depth > 1 
                then modExpCase (inlineRec origMap (depth-1) inlineAllRecs name) inlinedExp
                else return inlinedExp
    else return ex
  where
  (_,argTys) = collectArgTypes $ exprType call
  (call,expArgs,tyArgs) = collectArgs ex
  checkPacks expr = let (c,_,_) = collectArgs expr in
                    case c of
                      Var (_,n) _ | "pack" `isPrefixOf` n -> return True
                      _ -> return False

-- | Uniquify names after inlining a function call
uniquify :: Env ()
uniquify = do
  cFuncs <- asks convFuncs
  vdefs <- reconstructVdefs
  let m = Module (M (P "",[],"")) [] (cFuncs ++ vdefs)
      newVdefs = filter (notConvFunc cFuncs) $ getVdefs $ uniquifyNames m
  put $ foldl insertSymTab Map.empty newVdefs
  where
    getVdefs (Module _ _ v) = v

    notConvFunc funcs vdef = vdefName vdef `notElem` map vdefName funcs

-- | Beta reduce our inlined recursive function calls
beta :: Exp -> Env Exp
beta ex = case call of
  Lam _ e | not (null expArgs) -> do newExp <- betaReduce e lamBinds expArgs
                                     modExpApp beta newExp
  _ -> mkFuncApp call [] <$> mapM (modExpApp beta) expArgs
  where
    (call,expArgs,_) = collectArgs ex
    lamBinds = getLamBinds call


-- |Inline any unpack calls found as a case scrutinee
inlineUnpack :: Exp -> Env Exp
inlineUnpack (Case scrut vb ty alts) = 
  let (call,args,_) = collectArgs scrut in  do
  result <- runMaybeT $ do
    uName <- MaybeT $ asks (find (==call) . map snd . unpackExps)
    vdef  <- MaybeT $ asks (find ((==getVarName uName) . vdefName) . convFuncs)
    --need "fmap Just" to pass MaybeT an Env (Maybe Exp)
    newScrut <- MaybeT $ Just <$> 
                betaReduce (expression vdef) (bindings vdef) [head args]
    Case newScrut vb ty <$> MaybeT (Just <$> mapM (modAltEx recurse) alts)
  case result of
    Nothing -> processCase
    Just r -> return r
  where 
    expression (Vdef _ _ (Lam _ expr)) = expr
    expression _ = error "Unexpected vdef form in inlineUnpack"
    bindings (Vdef _ _ lam) = getLamBinds lam
    processCase = do newScrut <- recurse scrut
                     newAlts <- mapM (modAltEx recurse) alts
                     return $ Case newScrut vb ty newAlts

    recurse = modExpCase inlineUnpack
inlineUnpack e = return e

-- | Inline any single-use let bindings unless they are bound
--   to a case that doesn't end with a non-primitive dcon expression.
inlineLets :: Exp -> Env Exp
inlineLets expression = return $ runReader (go expression) []
  where
    go :: Exp -> Reader [(Var,Exp)] Exp
    go (App ex1 ex2)      = liftM2 App (go ex1) (go ex2)
    go (Appt ex ty)       = fmap (flip Appt ty) (go ex)
    go (Lam bs ex)        = fmap (Lam bs) (go ex) 
    go (Case ex v t alts) = do newAlts <- mapM (modAltEx go) alts
                               newEx <- go ex 
                               return $ Case newEx v t newAlts
    go v@(Var (_,name) _) = do entry <- asks (lookup name)
                               return $ fromMaybe v entry
    go (Let vdefs ex)     = 
      let --Count how many times each binding is used in this let
          counts = map (\vd -> (mapExprMonoid (countUses vd) expression, 
                                vd)) vdefs
          --Only add definitions that occur once in our Reader and don't
          --end in a case (unless the case returns a non-primitive dcon
          --expression or only describes a single thread of execution)
          (toAdd, others) = (map snd *** map snd) $ 
                            partition (\(num,Vdef _ _ expr) -> 
                                         getSum num <= 1 &&
                                         nonCase expr) counts
          newExReader = local (insertSub toAdd) (go ex)
      in if null others
          then newExReader
          else liftM2 Let (mapM (modVdefExp go) others) newExReader
    go ex = return ex

    --Return true if this expression doesn't contain a case. If it
    --does, only return true if it ends in a dcon expression OR 
    --there's only one path of alternatives
    nonCase (Lam _ e) = nonCase e
    nonCase (Let _ e) = nonCase e
    nonCase (Case _ _ _ alts) = if length alts == 1 
                                then helper nonCase (head alts)
                                else any (helper checkDcon) alts 
    nonCase _ = True
    checkDcon (Lam _ e) = checkDcon e
    checkDcon (Let _ e) = checkDcon e
    checkDcon (Case _ _ _ alts) = any (helper checkDcon) alts 
    checkDcon expr = case collectArgs expr of
                        (Dcon dc _,_,_) -> not (isPrim dc) 
                        _ -> False
    helper f (Adefault e)   = f e
    helper f (Alit _ e)     = f e
    helper f (Acon _ _ _ e) = f e

    countUses :: Vdef -> Exp -> Sum Int
    --Inline simple variable re-bindings, regardless of usage count
    countUses (Vdef _ _ (Var _ _)) _ = Sum 0 
    countUses (Vdef (_,n) _ _) (Var (_,name) _) | name == n = Sum 1
    countUses _ _ = Sum 0

    insertSub :: [Vdef] -> [(Var,Exp)] -> [(Var,Exp)]
    insertSub [] table = table
    insertSub (Vdef (_,var) _ ex:rest) table
      | isNothing (lookup var table) = let newEx = runReader (go ex) table
                                       in insertSub rest ((var,newEx) : table)
      | otherwise = error "Non function variable already in table" 

-- | Eliminate redundant data constructor expressions
redundantDcon :: Exp -> Env Exp
redundantDcon (Case scrut vb t alts) = do newScrut <- recurse scrut
                                          Case newScrut vb t <$> mapM help alts
  where
    recurse = modExpCase redundantDcon
    help (Adefault e) = Adefault <$> recurse e
    help (Alit l e) = Alit l <$> recurse e
    help (Acon dc tbs patterns e) =
      let dconTy = tArrows (map snd patterns ++ [snd vb])
          dconExpr = mkFuncApp (Dcon dc dconTy) [] (map vbToVar patterns)
          addBindings r = r {scrutBindings = (dconExpr, (dc,patterns,vb)) :
                                             scrutBindings r}
          vbToVar (v,ty) = Var (Nothing,v) ty
      in do newExp <- local addBindings $ recurse e
            return (Acon dc tbs patterns newExp)
redundantDcon expr = do binds <- asks scrutBindings
                        case lookup expr binds of
                          Nothing -> return expr
                          Just (_,_,(v,ty)) -> return $ Var (Nothing,v) ty



-- | After redundantCall has found the calls and created fresh let bindings,
-- go through the program top-down and replace any of these calls with the
-- variable names. TODO: Cleanup
inlineSameCalls :: Exp -> Env Exp
inlineSameCalls expr = runReaderT (go expr) []
  where
    go :: Exp -> ReaderT [(Exp,Exp)] Env Exp
    go (Lam bs e) = Lam bs <$> go e
    go (Case scrut vb tbs alts) = do newScrut <- go scrut
                                     newAlts <- mapM help alts
                                     return $ Case newScrut vb tbs newAlts
      where
        help (Adefault e) = Adefault <$> go e
        help (Alit l e) = Alit l <$> go e
        help (Acon dc tb patterns e) = Acon dc tb patterns <$> go e
    go (Let vds e) = do newVds' <- mapM help vds
                        let newVds = catMaybes newVds'
                            sameCallDefs = filter (("sameCall" `isPrefixOf`) . vdefName) newVds
                            newS = map newDef sameCallDefs  
                                 where
                                   newDef (Vdef vname ty e') = (e',Var vname ty)
                        if null newVds
                          then local (newS++) (go e)
                          else Let newVds <$> local (newS++) (go e)
      where
        help (Vdef mn ty e') = do newExpr <- go e'
                                  case newExpr of
                                    Var (_,name) _ | "sameCall" `isPrefixOf` name -> return Nothing
                                    _ -> return $ Just $ Vdef mn ty newExpr
    go e = do s <- ask
              case lookup e s of
                Nothing -> let (call,args,_) = collectArgs e in
                           mkFuncApp call [] <$> mapM go args
                Just vExpr -> return vExpr
-- | Lift redundant function calls that appear in all case alternatives into
--   a single definition. TODO: Fix the hackiness of fresh name generation.
--   TODO: Document what's going on here.
redundantCall :: Exp -> Env Exp
redundantCall (Case scrut vb t alts) = do 
  newAlts <- mapM (modAltEx recurse) alts
  let searchResults = map findCalls newAlts
      nums = concatMap (map fst) searchResults
      calls = map (filter (not . isVar) . map snd) searchResults
      callList = if any null calls || length calls == 1 then [] else sort calls
      sameCalls = traverseThem callList
      newCase = Case scrut vb t newAlts
  if null sameCalls
    then return newCase
    else let (_,defs) = mapAccumR mkDef (maximum nums + 1) sameCalls
             mkDef num expr = (num+1, Vdef (Nothing, "sameCall_"++show num) 
                                           (exprType expr) expr)
         in return $ Let defs newCase
  where
    recurse = modExpCase redundantCall
    findCalls :: Alt -> [(Int,Exp)]
    findCalls (Adefault e) = search e
    findCalls (Alit _ e) = search e
    findCalls (Acon _ _ _ e) = search e
    search (Case sc _ _ [Adefault e]) = search sc ++ search e
    search (Case sc _ _ [Alit _ e]) = search sc ++ search e
    search (Case sc _ _ [Acon _ _ _ e]) = search sc ++ search e
    search (Case sc _ _ _) = search sc 
    search (Let defs expr) = 
      let res = concatMap help defs 
          help (Vdef (_,name) _ e) = let recursed = search e 
                                         num = (read (drop (length "sameCall_") name) :: Int)
                                     in if "sameCall_" `isPrefixOf` name 
                                            && all (num>) (map fst recursed)
                                        then map (\(_,b) -> (num,b)) recursed
                                        else recursed
      in if null res then search expr else res ++ search expr
    search e = let (call,args,_) = collectArgs e in
               case call of
                Var _ _ -> [(0,e)]
                Dcon _ _ -> concatMap search args
                _ -> []
    traverseThem [] = []
    traverseThem l | any null l = []
                   | otherwise = let heads = map head l
                                 in if all (== head heads) heads
                                    then head heads : traverseThem (map tail l)
                                    else let toRemove = minimum heads
                                         in traverseThem (map (\l' -> if head l' == toRemove then tail l' else l') l)
redundantCall expr = return expr

--TODO: Clean this up and document it!
theoremBindings :: Exp -> Env Exp
theoremBindings (Lam bs ex) = fmap (Lam bs) (theoremBindings ex) 
theoremBindings (Case ex v t alts) = do newAlts <- mapM (modAltEx theoremBindings) alts
                                        newEx <- theoremBindings ex 
                                        return $ Case newEx v t newAlts
theoremBindings (Let vdefs ex) = do
  newDefs <- mapM (modVdefExp theoremBindings) vdefs
  uCalls <- asks (map snd . unpackExps)
  pCalls <- asks (map snd . packExps)
  let (unpackDefs, others) = partition (\(Vdef _ _ expr) -> isUnpackDef uCalls expr) newDefs
      (toMod, rest) = partition (\vd -> allPacked (vd, map getVarName pCalls) ex) unpackDefs
      localRead r = let toBind (Vdef (_,n) ty _ ) = (n,ty) in
                    r { toPack = map toBind toMod ++ toPack r }
  updatedDefs <- (++(rest ++ others)) <$> mapM removeCall toMod
  Let updatedDefs <$> local localRead (theoremBindings ex)
  where
    removeCall vd@(Vdef n ty expr) = do newExp <- go expr
                                        if newExp /= expr
                                          then do
                                              newTy <- asks (lookup ty . typePairs)
                                              return $ Vdef n (fromMaybe tyErr newTy) newExp
                                          else return vd
      where
        tyErr = error $ "Couldn't find type " ++ show ty ++ "for vdef " ++ show vd
    go :: Exp -> Env Exp 
    go (Case s v t alts) = do newAlts <- mapM helper alts
                              return $ Case s v t newAlts
      where
        helper (Acon dc tbs vbs expr) = Acon dc tbs vbs <$> go expr
        helper (Alit l expr) = Alit l <$> go expr
        helper (Adefault expr) = Adefault <$> go expr

    go expr@(App e1 e2) = do isPack <- asks ((e1 `elem`) . map snd . unpackExps)
                             if isPack
                               then return e2
                               else return expr
    go e = return e
    isUnpackDef calls (Case _ _ _ alts) = all (boolHelper (isUnpackDef calls)) alts
    isUnpackDef calls expr = case collectArgs expr of
      (Var (_,name) _,_,_) -> name `elem` map getVarName calls
      _ -> False

    allPacked :: (Vdef,[Var]) -> Exp -> Bool 
    allPacked vd (Lam _ expr) = allPacked vd expr
    allPacked vd (Let vdefs' expr) = allPacked vd expr && all helper vdefs'
      where
        helper (Vdef _ _ ex') = allPacked vd ex'
    allPacked vd (Case scrut _ _ alts) = allPacked vd scrut && all (boolHelper (allPacked vd)) alts
    allPacked vd@(Vdef (_,binding) _ _, pCalls) expr = case call of
      (Var (_,n) _) | not (null args) && (getVarName (head args) == binding) -> n `elem` pCalls
                    | null args -> binding /= n
      _ | null args -> True
        | otherwise -> allPacked vd call && all (allPacked vd) args
      where
        (call,args,_) = collectArgs expr

    boolHelper f (Adefault expr) = f expr
    boolHelper f (Alit _ expr) = f expr
    boolHelper f (Acon _ _ _ expr) = f expr
theoremBindings ex | null args = return ex
                   | otherwise = do 
  pCalls <- asks (map snd . packExps)
  vars <- asks (map fst . toPack)
  if call `elem` pCalls && getVarName (head args) `elem` vars
    then return $ head args
    else do newCall <- theoremBindings call
            newArgs <- mapM theoremBindings args
            return $ mkFuncApp newCall [] newArgs 
  where (call,args,_) = collectArgs ex 

-- | Inline any pack calls applied to data constructor expressions.
inlinePack :: [Exp] -> Exp -> Env Exp
inlinePack pExps ex = let (call,expArgs,_) = collectArgs ex in do
  expr <- asks (getFuncBody call . convFuncs)
  if call `elem` pExps && not (isVar (head expArgs))
    then let func = fromJust expr in do
           reduced <- betaReduce (exFromLambda func) (getLamBinds func) expArgs 
           recurse =<< mapExprM theorem =<< clean reduced
    else do newExpArgs <- mapM recurse expArgs
            return $ mkFuncApp call [] newExpArgs 
  where
    recurse = modExpApp (inlinePack pExps)
    --We just inlined a pack call on a data constructor expression, so we
    --should be able to apply one case-of-pattern reduction, followed by either
    --one or more case-of-patterns or, eventually, a case-of-default.
    clean (Case scrut vb _ alts) = caseReduce Nothing alts
      where
        (call,expArgs,_) = collectArgs scrut
        caseReduce Nothing [] = error $ "Expected either a case-of-pattern or "
                                     ++ "case-of-default in inlinePack"
        caseReduce (Just e) [] = betaReduce e [fst vb] [scrut] --case-of-default
        caseReduce defaultEx (Acon (_,dconName) _ binds expr : rest) 
          | getDconName call == dconName = --case-of-pattern
              let bindings = map fst (vb : binds)
                  args = scrut : expArgs
              in do newExp <- betaReduce expr bindings args
                    case newExp of
                      Case{} -> clean newExp
                      _ -> return newExp
          | otherwise = caseReduce defaultEx rest
        caseReduce _ (Adefault expr : rest) = caseReduce (Just expr) rest
        caseReduce defaultExp (Alit _ _ : rest) = caseReduce defaultExp rest
    clean _ = error "Unexpected form of betaReduced expression in inlinePack"

    getFuncBody :: Exp -> [Vdef] -> Maybe Exp
    getFuncBody _ [] = Nothing
    getFuncBody func (Vdef (_,name) _ e:rest) =
          if name == getVarName func
            then Just e
            else getFuncBody func rest

-- | Apply case-of-case, case-of-default, and case-of-pattern reductions
caseReduction :: Exp -> Env Exp
caseReduction (Case ex vb _ [Adefault e]) =  --case-of-default
  modExpCase caseReduction =<< betaReduce e [fst vb] [ex] 
caseReduction (Case scrut vb2 ty2 alts2) = case scrut of
  Case ex1 vb1 _ alts1 -> --case-of-case
    recurse $ Case ex1 vb1 ty2 $ map pushAlts alts1
  _ | isDcon call -> findAlt Nothing alts2
    | otherwise -> processCase
  where
    findAlt Nothing [] = processCase
    findAlt (Just e) [] = --case-of-default
      recurse =<< betaReduce e [fst vb2] [scrut] 
    findAlt _ (Acon (_,dconName) _ binds expr : _) 
      | getDconName call == dconName = --case-of-pattern
          let bindings = map fst (vb2 : binds)
              args = scrut : expArgs
          in recurse =<< betaReduce expr bindings args
    findAlt _ (Adefault e:rest) = findAlt (Just e) rest
    findAlt defExp (_:rest) = findAlt defExp rest

    recurse = modExpCase caseReduction

    pushAlts (Adefault ex) = Adefault $ Case ex vb2 ty2 alts2
    pushAlts (Alit l ex) = Alit l $ Case ex vb2 ty2 alts2
    pushAlts (Acon d tb vb ex) = Acon d tb vb $ Case ex vb2 ty2 alts2

    (call,expArgs,_) = collectArgs scrut

    --Recurse on subexpression in original case
    processCase = do newScrut <- recurse scrut
                     newAlts <- mapM (modAltEx recurse) alts2
                     return $ Case newScrut vb2 ty2 newAlts
caseReduction e = return e

-- | Given an application with a case or let expression as an argument,
--   push the rest of the application into the expression. Remove redundant
--   case expressions as we go.
pushDownApp :: Exp -> Env Exp
pushDownApp ex 
  | not (null expArgs) = maybe (return ex) pushPartial (find pushable allExs)
  | otherwise = return ex 
  where
    (call,expArgs,_) = collectArgs ex
    allExs = call : expArgs

    --If we had expression (e1 e2 ... en) and e is the subexpression of pushable
    --ei, create expression (e1 ... ei-1 e ei+1 ... en)
    createNewExp e = let spot = fromJust $ findIndex pushable allExs
                         (pre,post) = splitAt spot allExs
                     in if null pre
                         then mkFuncApp e [] $ tail post
                         else mkFuncApp (head pre) [] $
                              tail pre ++ (e : tail post)
                      
    pushable Case{} = True
    pushable Let{} = True
    pushable _ = False

    --Push subexpressions into this expression and recurse on resulting 
    --subexpression
    pushPartial (Case scrut vb ty alts) =
      Case scrut vb ty <$> mapM (partialFunc scrut vb) alts
    pushPartial (Let vdefs e) = 
      fmap (Let vdefs) $ mapExprM pushDownApp $ createNewExp e
    pushPartial e = error $ "Trying to push into non-case " ++ show e

    --Recurse down a case alternative, remembering the bindings of a 
    --constructor pattern for redundant-case elimination
    partialFunc scrut vb alt = case alt of
      Alit l e -> Alit l <$> recurse (createNewExp e)
      Adefault e -> Adefault <$> recurse (createNewExp e)
      Acon dc tbs patterns e ->
        let addBindings r = r {scrutBindings = (scrut,(dc,patterns,vb)) : 
                                               (Var (Nothing,fst vb) (snd vb), (dc,patterns,vb)) :
                                               scrutBindings r}
        in do newExp <- local addBindings $ optimize $ createNewExp e
              Acon dc tbs patterns <$> recurse newExp
      where recurse = mapExprM pushDownApp
            optimize = modExpCase redundantCase

    --Perform redundant-case optimization
    redundantCase (Case scrut vb t alts) = 
      do myBinds <- asks scrutBindings
         case lookup scrut myBinds of
          Nothing -> Case scrut vb t <$> mapM (modAltEx recurse) alts
          Just (dc, patterns, scrutBind) -> case find ((==dc) . getDcName) alts of
            Just (Acon _ _ pats e) -> do
              newExp <- betaReduce e (map fst (vb : pats)) 
                                     (map vbToVar (scrutBind : patterns))
              recurse newExp
            _ -> error "Missing an expected alternative in redundantcase"
      where
        getDcName (Acon dc _ _ _) = dc
        getDcName _ = (Nothing, "")
        recurse = modExpCase redundantCase
        vbToVar (v,ty) = Var (Nothing, v) ty
    redundantCase e = return e


-- | Inline any top-level variable definitions of the form (v = pack e), where
--   e is a data constructor expression.
inlinePackedVars :: Exp -> Env Exp
inlinePackedVars ex = mkFuncApp call tyArgs <$> mapM helper expArgs 
    where
      (call,expArgs,tyArgs) = collectArgs ex
      
      helper var@(Var (_,name) _) = do 
        table <- gets (getTable name) 
        let (c,args,tys) = collectArgs (getExp table)
            callName = getVarName c
            (dcon,subArgs,subTys) = collectArgs (head args)
        isPackTy <- asks (elem (getTycon $ getTy table) . snd . unzip . typePairs)
        isPack <- asks (elem callName . map vdefName . convFuncs)
        if isPack && isPackTy && isDcon dcon
           then do newExpArgs <- mapM recurseOnArgs subArgs
                   return $ mkFuncApp c tys [mkFuncApp dcon subTys newExpArgs]
           else return var
      helper e = recurseOnArgs e

      recurseOnArgs e = let (c,args,tys) = collectArgs e
                        in mkFuncApp c tys <$> mapM helper args


-- | Within the given expression, substitute each occurance of a vbind from
--   the vbinds list with the expression at the same index in the args list.
betaReduce :: Exp -> [Var] -> [Exp] -> Env Exp
betaReduce ex vbinds args 
  | length vbinds /= length args = betaErr
  | otherwise = local update $ mapExprM substitute ex
  where
    betaErr = error "betaReduce: number of arguments and parameters must match"
    update r = r{ boundArgs = zip vbinds args } 

    substitute var@(Var (_,n) _) = fromMaybe var <$> getBinds n
    substitute e = return e 

-- | Convert the current symbol table into a list of variable definitions.
reconstructVdefs :: Env [Vdef]
reconstructVdefs = gets (Map.foldWithKey toVdef [])
  where
    toVdef name table vdefs = 
      let mn = getMname table
          ty = getTy table
          ex = getExp table
      in Vdef (mn,name) ty ex : vdefs

-- | Return true if the function represented by this symbol table is a good 
--   producer. To be a good producer, a function must have the following 
--   properties:
--   1. The function is recursive.
--   2. A return value of the function is a dcon expression that 
--      uses the result of a recursive call.
--   3. If the function takes any arguments carrying packable types, then
--      the recursive call from (2) recurses on at least one of those
--      argument's "children" (e.g. the tail of a list, a child of a tree). This
--      is also transitive (e.g. the tail of a list in a Just, the tail of the 
--      tail of a list).
isGoodProducer :: [Ty] -> Maybe TableInfo -> Bool
isGoodProducer _ Nothing = False
isGoodProducer packableTys (Just table) = runReader (go $ getExp table) ([],[])
  where
    name = getName table
    (_,argTys) = collectArgTypes $ getTy table
    --We remember both arguments carrying packable types (Lefts are the arguments
    --or the carried values, Rights are the "children") and any names bound
    --to recursive calls on Rights.
    go :: Exp -> Reader ([Either Var Var],[Var]) Bool
    go (Lam bs e) = local (first (const (map Left (mapMaybe getVBinds bs)))) $ go e
      where
        getVBinds (Vb (v,_)) = Just v
        getVBinds _ = Nothing
    go (Case scrut _ _ alts) = or <$> mapM (addPats scrut) alts
    go (Let vdefs e) = do children <- asks (filter isRight . fst)
                          local (second (addBindings vdefs children)) $ go e
    go expr = case collectArgs expr of
                (Dcon _ _,args,_) -> or <$> mapM usesRecCall args
                _ -> return False

    usesRecCall (Case scrut _ _ alts) = 
      let (call,_,_) = collectArgs scrut
          help (Adefault e) = usesRecCall e
          help (Alit _ e) = usesRecCall e
          help (Acon _ _ _ e) = usesRecCall e
      in do isDesirableCall <- meetsCondition scrut
            case call of
              Var _ _ | isDesirableCall -> return True
              _ -> or <$> mapM help alts
    usesRecCall expr = 
      let (call, args, _) = collectArgs expr
      in case call of
           Var _ _ -> meetsCondition expr
           _ | not (null args) -> or <$> mapM usesRecCall (call : args)
             | otherwise -> return False

    -- check if we have a variable bound to a recursive call, or the call 
    -- itself that either operates on the "tail" of an input
    -- or does not operate on any packable types
    meetsCondition expr = do 
      children <- asks (filter isRight . fst)
      recResults <- asks snd
      case collectArgs expr of
       (Var (_,v) _,args,_) -> return $ 
        v `elem` recResults || (isRec v && 
                                (not (any (`elem` packableTys) argTys) ||
                                 any (`elem` children) 
                                     (map (Right . getVarName) args)))
       _ -> return False

    isRec = (==name)

    isRight (Right _) = True
    isRight _ = False

    addBindings vdefs children bindings = foldr add bindings vdefs
      where
        hasRecCall e = case collectArgs e of
         (Var (_,n) _,args,_) -> Any (isRec n && any (`elem` children) 
                                                 (map (Right . getVarName) args))
         _ -> Any False
        add (Vdef (_,vname) _ expr) binds = 
          if getAny $ mapExprMonoid hasRecCall expr
           then vname : binds
           else binds
          
    --Potentially add the "transitive tail" of a function input to our
    --reader before recursing.
    addPats _ (Adefault e) = go e
    addPats _ (Alit _ e) = go e
    addPats scrut (Acon _ _ vbs e) = do 
      args <- asks fst
      let toAdd = map fst $ filter ((`elem` packableTys) . snd) vbs
          recurse = go e
      if Left (getVarName scrut) `elem` args
        --Left means we're getting a "tail" for the first time
        then local (first ((map Right toAdd ++) . 
                           delete (Left (getVarName scrut)) )) recurse
        --Right means we're getting the tail of a tail
        else if Right (getVarName scrut) `elem` args
             then local (first (map Right toAdd ++)) recurse
             else recurse
                                                         
