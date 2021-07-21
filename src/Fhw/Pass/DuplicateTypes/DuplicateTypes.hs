{- |
Module : Fhw.Pass.DuplicateTypes.DuplicateTypes
Description : Duplicate recursive types involved in divide-and-conquer 
              algorithms to enable more memory-level parallelism in
              our dataflow networks.

ASSUMPTIONS
-----------
This pass assumes that the following passes have already occurred:
--monomorphise
--lift-functions

That is, there shouldn't be any polymorphism or locally defined functions. 
We also assume that the remove recursion pass has not occurred yet.


This module has n main stages:
  1. Find any recursive functions f with with the following characteristics:
      a) f takes a recursive type T as an argument.
      b) f contains a function call expression (g a1 ... an) where two arguments
         to g are recursive calls to f.
     The subsequent steps are applied for each such f. 

  2. Associate f with all functions g that can be reached from f in the 
     program's call graph.

  3. Collect all types S referenced in f or its callees g that have
     T as a field. Repeat this process on S until it reaches a fixed-point.
     Set S as the set of definitions for these types.

  4. Duplicate the type definitions in S from step 3 to get a new set S'. For
     any field in S' defined in S, replace it with the newly duplicated type in
     S'.

  5. Generate 'toDup' and 'fromDup' conversion functions for any type in S that
     is passed to f as an argument. They should have type toDup :: t -> t'  and
     fromDup :: t' -> t, where t and t' are drawn from S and S', respectively.

  6. For any function found in step 1, create a "shallow" duplicate function, and
     for any found in 1 and 2, create a "deep" duplicate
     function. The "shallow" duplicates have all names of function calls replaced
     with their shallow counterparts. "Deep" duplicates have the same, but they
     also have all their types and constructors updated to reflect the full 
     duplication.

  7. Given two of the recursive calls in f's definition, replace one with a
     call to the "shallow" duplicate, and replace the other with a call to the
     "deep" duplicate, with each argument passed to the latter converted to its
     duplicate type if applicable. Wrap the deep call in a call to the 
     appropriate conversion function to return the original type.
     
-}
module Fhw.Pass.DuplicateTypes.DuplicateTypes (duplicateTypes) where

--import Debug.Trace

import Fhw.Haskgen.DeadCode (removeCode)
import Fhw.Core.Core 
import Data.List
import qualified Data.Set as Set
import qualified Data.Map as Map
import Control.Arrow
import Control.Applicative
import Control.Monad
import Data.Maybe (fromJust, fromMaybe, mapMaybe, isNothing)

data WrapEnv = WrapEnv { wrappedTdef :: Tdef
                       , originalTdef :: Tdef
                       , duplicatedTdef  :: Tdef
                       , toDupVdef :: Vdef
                       , fromDupVdef :: Vdef 
                       , toWrapVdef :: Maybe Vdef
                       , fromWrapVdef :: Maybe Vdef }

--showAll :: Show a => [a] -> String
--showAll = ('\n':) . intercalate "\n" . map show

-- | Apply the type duplication transformation to this module
duplicateTypes :: Module -> Module
duplicateTypes (Module mn tdefs vdefs) = 
  flip removeCode ["main"] $ 
  Module mn (concat [tdefs,map fst tdefWrappers, Map.elems tdefMap]) $
             concat [toDups,fromDups,toWraps,fromWraps,shallows,deeps,
                    modifiedDefs,filter ((`notElem` map vdefName modifiedDefs) 
                                         . vdefName) $ filter (`notElem` divConqFuncs) vdefs]
  where
    --1. Find recursive divide-and-conquer functions that fit the description 
    --   in the top block comment. 
    divConqFuncs :: [Vdef]
    divConqFuncs = mapMaybe (findFunc $ map tdefToTy $ filter isRecTdef tdefs) vdefs

    --2. Associate each recursive function f from previous step with a list
    --   of functions G. A function g is in G if there's a path from f to g
    --   in the program's call graph.
    calleeMap :: [(Vdef, Set.Set Vdef)]
    calleeMap = map (collectCallees vdefs) divConqFuncs

    --3. Collect all types S referenced in f or its callees g that have
    --   T as a field. Repeat this process on S until it reaches a fixed-point.
    --   Set S as the set of definitions for these types.
    typesToCopy :: Set.Set Tdef
    typesToCopy = foldr (findTypes tdefs) Set.empty calleeMap

    --4. Create duplicate type definitions (paired with original tdef)
    tdefMap :: Map.Map Tdef Tdef
    tdefMap = Map.map updateFields updatedDefs 
      where
        --Update all type constructors and recursive fields
        updatedDefs = Set.foldr mkDuplicateTy Map.empty typesToCopy
        --Walk over fields of new types, replacing any found in our
        --map with their new names
        updateFields (Data n _ cdefs) = Data n [] $ map fixFields cdefs
        fixFields    (Constr n _ tys) = Constr n [] $ map replaceTy tys
        replaceTy ty = fromMaybe ty $ do
                        tdef <- find ((== ty) . tdefToTy) $ Map.keys updatedDefs
                        copy <- Map.lookup tdef updatedDefs
                        return $ tdefToTy copy

    --4.5. If a kernel_input function has been specified, its output type is one
    --     that we've duplicated. Find the original type and its duplication, and
    --     create a wrapper for them. Associate each wrapper with the original pair
    --     of (origTdef, dupTdef)
    tdefWrappers :: [(Tdef, (Tdef, Tdef))]
    tdefWrappers = let tysToWrap = map getVdefRetTy $ 
                          filter (("kernel_input" `isPrefixOf`) . vdefName) vdefs
                   in map mkWrapper $ Map.toList $ Map.filterWithKey 
                        (\k _ -> tdefToTy k `elem` tysToWrap) tdefMap
        
    --5. Generate conversion functions for any type in tdefMap that's passed
    --   to a recFunc as an argument.
    (toDups,fromDups) = unzip convFuncs
    convFuncs :: [(Vdef, Vdef)] 
    convFuncs = map mkConvFuncs $ Map.toList $ Map.filterWithKey inRecFunc tdefMap
      where
        --all types passed to/returned from our divConqFuncs
        allTys = nub $ concatMap (\(Vdef _ t _) -> listTypes t) divConqFuncs
        inRecFunc origTdef _ = let ty = tdefToTy origTdef
                               in ty `elem` allTys

    --Information and conversion functions for each wrapped type
    wrapEnvs = map mkEnv tdefWrappers
      where
        mkEnv (wrapTd, (origTd, dupTd)) = 
          let origTy = tdefToTy origTd
              (toDup,fromDup) = fromJust $
                                find ((origTy ==) . getVdefRetTy . snd) convFuncs
          in WrapEnv { wrappedTdef = wrapTd
                     , originalTdef = origTd
                     , duplicatedTdef = dupTd
                     , toDupVdef = toDup
                     , fromDupVdef = fromDup 
                     , toWrapVdef = Nothing
                     , fromWrapVdef = Nothing }

    --5.5 Generate conversion functions for any wrapper types we created.
    (toWraps,fromWraps) = unzip wrappingFuncs
    (newWrapEnvs, wrappingFuncs) = unzip wrapConvFuncs
    wrapConvFuncs :: [(WrapEnv, (Vdef, Vdef))]
    wrapConvFuncs = map mkWrapConv wrapEnvs
        
    --6. For each definition in calleeMap, create a deep copy; create a shallow copy
    --   for every tuple's first element in the calleeMap list (i.e. we don't need
    --   to create shallow copies of any function that doesn't operate on a duplicated
    --   type itself)
    (shallows, deeps) = first (filter isDivConq) $ unzip $ Map.elems functionMap
    functionMap :: Map.Map Vdef (Vdef,Vdef)
    functionMap = let toCopy = foldr (\(vd, vdSet) -> (`Set.union` Set.insert vd vdSet)) 
                                     Set.empty calleeMap
                      --these divide-and-conquer functions will have shallow variants. If
                      --one div-and-conq function calls another, the deep and shallow copies 
                      --should call their respective versions (otherwise, the non-shallow, non-deep
                      --calls will incur deep calls on both branches). 
                      divConqs = Set.filter isDivConq toCopy
                  in Set.foldr (mkFuncCopies tdefMap toCopy divConqs) Map.empty toCopy
    isDivConq (Vdef (_,n) _ _) = any (`isPrefixOf` n) $ map vdefName divConqFuncs

    --7. For each recFunc, replace one of its recursive calls with a call to 
    --   its shallow copy and replace the other with a call to its deep 
    --   copy, with the output and appropriate inputs of the call wrapped in 
    --   conversion function calls.   
    newRecFuncs :: [Vdef]
    newRecFuncs = Map.elems $ Map.mapWithKey (modifyFuncs tdefMap convFuncs) $
                  Map.filterWithKey (\k _ -> k `elem` divConqFuncs) functionMap

    --8. If we have a wrapper type, wrap (kernel_input ...) in call to appropriate
    --   to_wrap function from 5.5, update types of whatever takes kernel_input as
    --   argument or uses it in a definition, and keep updating types transitively
    --   until getting to a function that has to_dup and from_dup calls in it (this
    --   is the driver function that calls a shallow and deep copy). Update the patterns
    --   of this function and remove the calls to to_dup and from_dup from it. Wrap
    --   a kernel_output call (if it exists) in a from_wrap function call.
    modifiedDefs :: [Vdef]
    modifiedDefs = let defs = newRecFuncs ++ filter (`notElem` divConqFuncs) vdefs
                   in if null newWrapEnvs then newRecFuncs 
                      else insertWraps (Map.elems functionMap) defs newWrapEnvs

    getVdefRetTy = fst . collectArgTypes . vdefTy

-- | Return this variable definition if it's a function that matches the 
--   description given in step 1 of the block comment at the start of the 
--   program.
findFunc :: [Ty] -> Vdef -> Maybe Vdef
findFunc recTys vd@(Vdef name ty ex) = if fitsDescription 
                                       then Just vd
                                       else Nothing
  where
    (_, argTys) = collectArgTypes ty

    fitsDescription = recProcessor && multipleRecs ex

    -- True if this definition takes a recursive type as an argument.
    recProcessor = any (`elem` recTys) argTys

    -- True if we have multiple, independent recursive calls that occur 
    -- in parallel. 
    -- TODO: Currently, just looking for them in an application.
    multipleRecs (Lam _ e)         = multipleRecs e
    multipleRecs (Appt e _)        = multipleRecs e
    multipleRecs (Let _ e)         = multipleRecs e 
    multipleRecs (Case e _ _ alts) = multipleRecs e || any altHelper alts
      where
        altHelper (Adefault e')   = multipleRecs e'
        altHelper (Alit _ e')     = multipleRecs e'
        altHelper (Acon _ _ _ e') = multipleRecs e'
    multipleRecs e@(App _ _) = let (_, args, _) = collectArgs e
                                   recCalls = filter (hasRecCall name) args
                               in length recCalls > 1 || any multipleRecs args
    multipleRecs _ = False


-- | Given all the vdefs in the program and a recursive divide-and-conquer
--   function f, associate f with all functions g such that a path from
--   f to g exists in the program call graph.
collectCallees :: [Vdef] -> Vdef -> (Vdef, Set.Set Vdef)
collectCallees vdefs recFunc@(Vdef (_,name) _ _) = (recFunc, 
                                                    collect recFunc Set.empty)
  where
    --Traverse the call graph from f until reaching a fixed-point
    collect (Vdef _ _ expr) set = let newSet = go expr
                                      finalSet = set `Set.union` newSet
                                      toExplore = newSet `Set.difference` set
                                  in if set == finalSet
                                     then finalSet
                                     else Set.foldr collect finalSet toExplore
    go :: Exp -> Set.Set Vdef
    go (Var (_,var) _) = if var /= name && (var `elem` map vdefName vdefs)
                         then maybe Set.empty Set.singleton $  
                              find ((==var) . vdefName) vdefs
                         else Set.empty
    go (Lam _ e)         = go e
    go (Appt e _)        = go e
    go (App e1 e2)       = go e1 `Set.union` go e2
    go (Let vds e)       = Set.unions (go e : map goVdef vds)
      where
        goVdef (Vdef _ _ ex) = go ex
    go (Case e _ _ alts) = Set.unions (go e : map altHelper alts)
      where
        altHelper (Adefault ex)   = go ex
        altHelper (Alit _ ex)     = go ex
        altHelper (Acon _ _ _ ex) = go ex
    go _ = Set.empty
      

-- | Given a set of type definitions tSet, search the given function definitions for
--   any types that have a type in tSet as a field. Add their definitions to tSet,
--   and repeat until tSet has reached a fixed point.
findTypes :: [Tdef] -> (Vdef, Set.Set Vdef) -> Set.Set Tdef -> Set.Set Tdef
findTypes tdefs (vd@(Vdef _ defTy _), calleeSet) tSet = 
  Set.map (fromMaybe err . (`lookup` tyMap)) $ runFix $ Set.map tdefToTy startSet
  where
    err = error "Type found by findTypes not defined"

    -- Insert the definition of the any recursive argument or return types 
    -- of our divide-and-conquer function into our set of type definitions.  
    startSet = foldr Set.insert tSet $ 
               filter ((`elem` listTypes defTy) . tdefToTy) $
               filter isRecTdef tdefs

    -- The fix-point computation
    runFix currentSet = let newSet = Set.foldr goVdef currentSet $
                                     vd `Set.insert` calleeSet
                        in if newSet == currentSet
                           then newSet
                           else runFix newSet

    -- Search a given definition for types to add to our set
    goVdef :: Vdef -> Set.Set Ty -> Set.Set Ty
    goVdef (Vdef _ ty expr) initSet = Set.unions [initSet, addTypes ty, go expr]
      where
        --collect appropriate types from this definition's expression
        go ex = case ex of
          Var _ t -> addTypes t
          Lam bs e -> Set.unions $ go e : map vbTys bs
          App e1 e2 -> go e1 `Set.union` go e2 
          Let vds e -> go e `Set.union` foldr goVdef Set.empty vds
          Case e (_,vbTy) t alts -> Set.unions $ go e : addTypes vbTy : 
                                                 addTypes t : map goAlt alts
          _ -> Set.empty

        goAlt (Adefault e) = go e
        goAlt (Alit _ e) = go e
        goAlt (Acon _ _ _ e) = go e

        vbTys (Vb (_, t)) = addTypes t
        vbTys _ = Set.empty

        addTypes t = let toAdd = mapMaybe (lookupSet initSet) $ 
                                 listTypes t
                     in Set.fromList toAdd

    -- Does this type's definition have any constructor fields that we
    -- plan to duplicate? If so, return the type.
    lookupSet set ty = do tdef <- lookup ty tyMap 
                          if any (`Set.member` set) $ 
                             concatMap constrTypes $ 
                             tdefConstrs tdef then return ty else fail ""
    tyMap = zip (map tdefToTy tdefs) tdefs
          

-- | Create a duplicate type definition and add it to our (orig,dup) map
mkDuplicateTy :: Tdef -> Map.Map Tdef Tdef -> Map.Map Tdef Tdef
mkDuplicateTy tdef@(Data (_,name) _ constrs) = 
  Map.insert tdef (Data (Nothing, newName) [] $ map mkNewConstr constrs) 
  where
    newName = name ++ "_Dup"

    --Give constructor a new name and replace any recursive fields with new
    --type name.
    mkNewConstr (Constr (_,cname) [] fields) = 
      let update (Tcon (_,ty)) | ty == name = Tcon (Nothing, newName)
          update t = t
          newCName = cname ++ "_Dup"
      in Constr (Nothing, newCName) [] $ map update fields
    mkNewConstr _ = error "Constructors shouldn't be polymorphic"

-- | Given an original type and its duplication, create a wrapper type that
-- will be passed around across multiple kernel invocations. Note that this
-- type will have O(n + rd) constructors, where n is the number of original 
-- variants without recursive fields, r is the number of original variants
-- with recursive fields, and d is the maximum number of recursive fields
-- in a given original variant.
mkWrapper :: (Tdef, Tdef) -> (Tdef, (Tdef, Tdef))
mkWrapper (origTdef@(Data (_, origName) _ constrs), dupTdef) = 
  (Data (Nothing, origName ++ "_Wrap") [] $ concatMap mkWrapConstrs constrs,
   (origTdef, dupTdef))
  where
    origTy = tdefToTy origTdef
    dupTy = tdefToTy dupTdef

    mkWrapConstrs (Constr (_,cName) _ tys) = 
      let numRecs = length $ filter (==origTy) tys --number of recursive fields
      in if numRecs > 1
         then snd $ mapAccumR createConstr startNum (replicate numRecs tys)
         else [Constr (Nothing, cName ++ "_Wrap") [] tys]
      where
        startNum = 1 --used to count how many fields we've replaced
        --Create a copy of the above constructor with the nth recursive
        --field replaced with the duplicate type
        createConstr :: Int -> [Ty] -> (Int, Cdef)
        createConstr n ts = 
          let (_,newTys) = foldr replaceTy (n,[]) ts
          in (n+1, Constr (Nothing, cName ++ "_Wrap" ++ show n) [] newTys)
        --Used to find and replace the appropriate recursive field in a list
        --of types, while counting how many we've seen so far
        replaceTy ty (n',rest) | ty == origTy && n' == startNum = (n'-1, dupTy:rest)
                               | ty == origTy = (n'-1, ty:rest)
                               | otherwise = (n', ty:rest)

   

-- | Given (original, duplicated) type definitions, create (toDup, fromDup)
--   duplication functions to convert between expressions of these types.
mkConvFuncs :: (Tdef, Tdef) -> (Vdef, Vdef)
mkConvFuncs (origTdef, dupTdef) = (toDupDef, fromDupDef)
  where
    toDupDef = mkDef ("toDup_" ++ tdefName origTdef)
                     origTy dupTy origCons dupCons
    fromDupDef = mkDef ("fromDup_" ++ tdefName dupTdef)
                     dupTy origTy dupCons origCons 

    --original and duplicate types and variant definitions
    origTy = tdefToTy origTdef
    dupTy = tdefToTy dupTdef
    origCons = tdefConstrs origTdef
    dupCons = tdefConstrs dupTdef
    
    --Create one of the two variable definitions
    mkDef n inTy outTy inCons outCons = 
      Vdef name (tArrow inTy outTy) $ Lam [Vb (vbName, inTy)] $
      Case (Var (Nothing, vbName) inTy) ("dummyVB", inTy) outTy $
      zipWith mkAlt inCons outCons
      where
        name = (Nothing, n)
        vbName = "val"
        mkAlt (Constr inName _ inFields) (Constr outName _ outFields) =
          let vbNames = map (("field_"++) . show) ([1..] :: [Int])
              args = zipWith Var (zip (repeat Nothing) vbNames) inFields
              wrapRecArgs var = if exprType var == inTy
                                then App (Var name (tArrow inTy outTy)) var
                                else var
          in Acon inName [] (zip vbNames inFields) $ 
             mkFuncApp (Dcon outName (tArrows $ outFields ++ [outTy])) [] $
             map wrapRecArgs args

-- | Create conversion functions between a wrapper type and the original type
--   from which it was created. 
mkWrapConv :: WrapEnv -> (WrapEnv, (Vdef, Vdef))
mkWrapConv env = (env { toWrapVdef = Just toWrapDef,
                        fromWrapVdef = Just fromWrapDef}, 
                  (toWrapDef, fromWrapDef))
  where
    toWrapDef = mkDef ("toWrap_" ++ tdefName (originalTdef env))
                    origTy wrapTy origConstrs wrapConstrs 
    fromWrapDef = mkDef ("fromWrap_" ++ tdefName (wrappedTdef env))
                    wrapTy origTy wrapConstrs origConstrs

    origTy = tdefToTy $ originalTdef env
    dupTy = tdefToTy $ duplicatedTdef env
    wrapTy = tdefToTy $ wrappedTdef env
    origConstrs = tdefConstrs $ originalTdef env
    wrapConstrs = tdefConstrs $ wrappedTdef env

    mkDef n inTy outTy inConstrs outConstrs = 
      Vdef (Nothing, n) convTy $ Lam [Vb ("val", inTy)] $
      Case (Var (Nothing, "val") inTy) ("dummyVB", inTy) outTy $
      map mkAlt inConstrs 
      where
        convTy = tArrow inTy outTy
        mkAlt (Constr inName _ inFields)  = 
          let vbNames = map (("field_"++) . show) ([1..] :: [Int])
              vbToVar (varName,varTy) = Var (Nothing, varName) varTy
              --Get the corresponding output constructor for this input
              outConstr = fromMaybe (error "mkWrapConv: outConstr")
                          $ find ((if "Wrap" `isInfixOf` snd inName 
                                  then (`isPrefixOf` snd inName) 
                                  else (snd inName `isPrefixOf`)) .
                                   snd . constrDcon) outConstrs
              --If true, then the input and output constructors will have
              --the same fields (since none of the fields are the original 
              --recursive type)
              sameFields = origTy `notElem` inFields
              dconTy = tArrows $ (if sameFields then inFields 
                                  else constrTypes outConstr) ++ [outTy]
              typedVbs = zip vbNames inFields
          in Acon inName [] typedVbs $ 
             mkFuncApp (Dcon (constrDcon outConstr) dconTy) [] $
             -- If this input constructor doesn't have the same fields as the
             -- output, need to insert conversion calls to the different fields
             if sameFields
               then map vbToVar typedVbs
               else let convField ty arg = let wrapper t1 t2 conv = if exprType arg == t1 && ty == t2 
                                                                    then App (vdefToVar $ conv env) arg 
                                                                    else arg
                                           in if "Wrap" `isInfixOf` snd inName
                                              then wrapper dupTy origTy fromDupVdef
                                              else wrapper origTy dupTy toDupVdef
                    in zipWith convField (constrTypes outConstr) $ map vbToVar typedVbs


--Given a recursive definition to duplicate, create shallow
--and deep copies for it and map the original to its copies.
mkFuncCopies :: Map.Map Tdef Tdef -> Set.Set Vdef -> Set.Set Vdef -> Vdef -> 
                Map.Map Vdef (Vdef,Vdef) -> Map.Map Vdef (Vdef,Vdef)
mkFuncCopies tyMap funcsToDup divConqFuncs vd@(Vdef (_,name) ty ex) = 
  Map.insert vd (shallowDef, deepDef) 
  where
    --In the shallow branch, we shouldn't call any functions that interfere with
    --the deep branch. However, if div-and-conq function f calls another div-and-conq
    --function g, then f_shallow should call g_shallow. Otherwise, if it simply calls
    --g, that will spawn calls to both g_shallow and g_deep, the latter of which will
    --interfere with the calls to g_deep generated by f_deep. We thus replace any
    --of these shallowNames encountered with their *_shallow variant.
    shallowNames = Set.map vdefName divConqFuncs
    vdefNames = Set.map vdefName funcsToDup
    shallowDef = Vdef (Nothing, name ++ "_shallow") ty $
                 mapExpr mkShallow ex
      where
        mkShallow e@(Var (_,var) t) = if var `Set.member` shallowNames
                                      then Var (Nothing, var ++ "_shallow") t
                                      else e
        mkShallow e = e

    deepDef = Vdef (Nothing, name ++ "_deep") (updateTy ty) $
              mapExpr mkDeep ex
      where
        mkDeep (Var mn@(_,var) t) = (if var `Set.member` vdefNames
                                     then Var (Nothing, var ++ "_deep")
                                     else Var mn) $ updateTy t
        mkDeep (Lam binds e) = let updateBind (Vb (var,t)) = Vb (var, updateTy t) 
                                   updateBind bind = bind
                               in Lam (map updateBind binds) e
        mkDeep (Let vds e) = let updateVds (Vdef mname t e') = 
                                    Vdef mname (updateTy t) e'
                             in Let (map updateVds vds) e
        mkDeep e@(Dcon (_, dcon) _) = fromMaybe e $ lookup dcon dconMap
        mkDeep (Case e (var, vbTy) t alts) = Case e (var, updateTy vbTy) 
                                                    (updateTy t) 
                                                    (map altHelper alts)
        mkDeep e = e

        altHelper (Acon dc tbs vbs expr) = 
          let newDc = maybe dc (\(Dcon foundDc _) -> foundDc) $
                      lookup (snd dc) dconMap
              newVbs = map (second updateTy) vbs
          in Acon newDc tbs newVbs expr
        altHelper alt = alt


    -- Replace a type with its copy, if a copy exists
    updateTy t = let newTyMap = Map.map tdefToTy $ Map.mapKeys tdefToTy tyMap
                     f curTy = if isFunctionTy curTy
                                then tArrows $ map f $ listTypes curTy
                                else fromMaybe curTy $ Map.lookup curTy newTyMap
                 in tArrows $ map f $ listTypes t

    dconMap = concatMap extractDconInfo $ zip (Map.keys tyMap) (Map.elems tyMap)
    extractDconInfo (Data _ _ origConstrs, Data dupTy _ dupConstrs) = 
      zip (map (\(Constr (_,dc) _ _ )-> dc) origConstrs)
          (map (\(Constr dc _ fields) -> Dcon dc $ tArrows $ 
                                         fields ++ [Tcon dupTy]) dupConstrs)


-- | Insert calls to duplicated recursive functions and conversion functions to
-- the deep call's argument(s) and return value.
modifyFuncs :: Map.Map Tdef Tdef -> [(Vdef, Vdef)] -> Vdef -> (Vdef, Vdef) -> Vdef
modifyFuncs tdefMap convFuncs (Vdef name origTy expr) (shallowDef, deepDef) = 
  Vdef name origTy $ insertDefs expr
  where
    typeMap :: Map.Map Ty Ty
    typeMap = Map.map tdefToTy $ Map.mapKeys tdefToTy tdefMap

    Vdef shalName shalTy _ = shallowDef
    Vdef deepName deepTy _ = deepDef

    (recTy, _) = collectArgTypes origTy

    findCall g t = maybe (convErr t) (vdefToVar . g) $ 
                   find ((t==) . fst . collectArgTypes . vdefTy . snd) convFuncs
      where
        convErr = error $ "Couldn't find conversion function for type "
                        ++ show t

    insertDefs (Lam b e)          = Lam b $ insertDefs e
    insertDefs (Appt e t)         = Appt (insertDefs e) t
    insertDefs (Let vdefs e)      = Let vdefs $ insertDefs e 
    insertDefs (Case e vb t alts) = Case (insertDefs e) vb t (map altHelper alts)
      where
        altHelper (Adefault e')   = Adefault $ insertDefs e'
        altHelper (Alit lit e')   = Alit lit $ insertDefs e'
        altHelper (Acon dc tbs vbs e') = Acon dc tbs vbs $ insertDefs e'
    insertDefs e@(App e1 e2) = 
      let (call, args, targs) = collectArgs e
          (notRec, rest) = break (hasRecCall name) args
      in if not (null rest) && any (hasRecCall name) (tail rest) --there's another recursive call
           then let (notRec2, secondRec:rest2) = break (hasRecCall name) (tail rest)
                    --Shallow call
                    newCall1 = mkNewCall "shallow" (head rest)
                    --Deep call
                    newCall2 = mkNewCall "deep" secondRec
                in mkFuncApp call targs $ 
                   concat [notRec,[newCall1],notRec2,[newCall2],rest2]
           else App (insertDefs e1) (insertDefs e2)
    insertDefs e = e

    mkNewCall s (Lam b e)          = Lam b $ mkNewCall s e
    mkNewCall s (Appt e t)         = Appt (mkNewCall s e) t
    mkNewCall s (Let vdefs e)      = Let vdefs $ mkNewCall s e 
    mkNewCall s (Case e vb t alts) = Case (mkNewCall s e) vb t (map altHelper alts)
      where
        altHelper (Adefault e')   = Adefault $ mkNewCall s e'
        altHelper (Alit lit e')   = Alit lit $ mkNewCall s e'
        altHelper (Acon dc tbs vbs e') = Acon dc tbs vbs $ mkNewCall s e'
    mkNewCall s e@(App e1 e2) = case collectArgs e of
      (Var n _,_,_) | n == name -> if s == "shallow" then mkShallow e else mkDeep e
      _ -> App (mkNewCall s e1) (mkNewCall s e2)
    mkNewCall _ e = e

    --Find a recursive call and convert it to a shallow call
    mkShallow e = let (call, args, _) = collectArgs e
                  in case call of
                    Var n _ | n == name -> mkFuncApp (Var shalName shalTy) [] args
                    _ -> e
    --Find a recursive call and convert it to a deep call, with conversion calls
    --surrounding its output and inputs as necessary.
    mkDeep e = let (call, args, _) = collectArgs e
               in case call of
                Var n _ | n == name -> let newArgs = map insertCalls args
                                           recCall = Var deepName deepTy
                                           newFunc = mkFuncApp recCall [] newArgs
                                       in if recTy `Map.member` typeMap
                                          then App (findCall snd recTy) newFunc
                                          else newFunc
                _ -> e

    insertCalls e | exprType e `Map.member` typeMap = App (findCall fst $ exprType e) e
                  | otherwise = e

-- | Insert calls to to_Wrap and from_Wrap around kernel input and output, 
--   update types affected by this change, and modify the kernel function
--   to match on a Wrapped type and avoid calling to_Dup and from_Dup
--
--   TODO: This portion of the pass doesn't work properly when the kernel
--   function passes its wrapped input to other functions, or when it contains
--   other types that have toDup/fromDup wrappers. The current example breaking
--   this is the Filtering test's kernel.
insertWraps :: [(Vdef,Vdef)] -> [Vdef] -> [WrapEnv] -> [Vdef]
insertWraps recCopies vdefs wrapEnvs = 
  let newDefs = startDef : useDef : modifyDefs (fromMaybe (noDefErr funcToMod)
                                       $ find ((==funcToMod) . vdefName) vdefs)
  in newDefs ++ filter ((`notElem` map vdefName newDefs) . vdefName) vdefs
  where
    --The wrapper environment and the (modified) definition containing a call
    --to kernel_input.
    (env,startDef) = fromJust (do 
      kernelDef@(Vdef kName _ _) <- find (("kernel_input" `isPrefixOf`) 
                                          . vdefName) vdefs
      environment <- let (retTy,_) = collectArgTypes $ vdefTy kernelDef
                     in find ((==retTy) . tdefToTy . originalTdef) wrapEnvs
      Vdef callName callTy callExp <- find (containsVar $ vdefToVar kernelDef) vdefs
      newExp <- callToWrap kName callExp
      if snd callName == "main" 
        then mainErr
        else return (environment, Vdef callName (wrapType callTy) newExp))
      where
        --Insert to_Wrap call on kernel input
        callToWrap name expr = case getCall expr of 
          Var var _ | var == name -> Just $ App toWrapCall expr
          _ -> error $ "callToWrap: Unexpected form of expression " ++
                       "containing kernel input call"

    --The shallow and deep calls we should find in our kernel
    (shallowCall,deepCall) = maybe (error "no deep/shallow copies found: ") 
        (vdefToVar *** vdefToVar) $ 
        find ((=="kernel_deep") . vdefName . snd) recCopies
    --Types to modify or introduce
    origTy = tdefToTy $ originalTdef env
    wrapTy = tdefToTy $ wrappedTdef env
    dupTy = tdefToTy $ duplicatedTdef env
    --wrap conversion functions
    toWrapCall = vdefToVar $ fromMaybe (error "no wrap def") $ toWrapVdef env
    fromWrapCall = vdefToVar $ fromMaybe (error "no wrap def") $ fromWrapVdef env
    --All wrapped constructors
    wrapConstrs = tdefConstrs $ wrappedTdef env
    
    --The first function definition we need to modify and the (modified) 
    --definition containing the use of startDef.
    (funcToMod,useDef) = case getCall defEx of
      Var (_,f) _ -> (f, Vdef defName defTy $ (if "kernel_output" `isPrefixOf` f
                                               then App fromWrapCall else id) $ 
                                               mapExpr updateTypes defEx)
      _ -> startErr
      where
        startVar = vdefToVar startDef
        (Vdef defName defTy defEx) = fromMaybe (error "can't find use of startDef")
                                     $ find (containsVar startVar) vdefs
        startErr = error "unexpected form of definition using startDef"

    --Transitively update types to reflect wrapping. 
    --Perform special modifications once we reach the kernel function.
    modifyDefs vd@(Vdef name ty expr) = 
      if isKernel then [newDef] else newDef : modifyDefs nextDef
      where
        isKernel = containsVar shallowCall vd
        newDef = Vdef name (wrapType ty) $ 
                 if isKernel then kernelMod expr else mapExpr updateTypes expr
        nextDef = fromMaybe (error "Didn't find new definition to modify") 
                $ findNext expr
        --Find the next function to transform (the one taking an argument
        --of wrapped type). We only expect to find one such function at each
        --step until hitting the kernel function.
        findNext (Lam _ e) = findNext e
        findNext (Case _ _ _ alts) = checkNexts $ mapMaybe findNextAlt alts
          where
            findNextAlt (Adefault e)   = findNext e
            findNextAlt (Alit _ e)     = findNext e
            findNextAlt (Acon _ _ _ e) = findNext e
        findNext ex@(App _ _) = let (call,args,_) = collectArgs ex in 
          case call of
            Var (_,n) t | n /= snd name && origTy `elem` listTypes t ->
                          find ((==n) . vdefName) vdefs
            _ -> checkNexts $ mapMaybe findNext args
        findNext _ = Nothing
        --Only expect to find one next function to inspect
        checkNexts nexts | null nexts = Nothing
                         | length nexts > 2 = error "What to do when finding multiple nexts?"
                         | otherwise = Just (head nexts)

    --Descend into expression, wrapping types as we go, until hitting a case
    --that scrutinizes an unwrapped expression. At that point, introduce 
    --wrapped dcons, update field types, and remove calls to from_dup/to_dup.
    kernelMod ex = case ex of
      Lam bs e -> let f (Vb (n,t)) = Vb (n, wrapType t)
                      f tb = tb
                  in Lam (map f bs) $ kernelMod e
      Var n t -> Var n (wrapType t)
      Case scrut vb t alts | snd vb == origTy -> 
        Case (kernelMod scrut) (fst vb, wrapTy) (wrapType t) $ 
        let newAlts = concatMap updateAlt alts
            defOrder (Acon a1 _ _ _) (Acon a2 _ _ _) =
             let wrapDcs = map (\(Constr dc _ _) -> dc) wrapConstrs
             in compare (elemIndex a1 wrapDcs) (elemIndex a2 wrapDcs)
            defOrder _ _ = error "We should just be comparing dcon patterns" 
           --Need to order alternatives to match order of constructor
           --definitions to ensure correct translation to dataflow
        in sortBy defOrder newAlts
                           | otherwise -> 
        let f (Adefault e) = Adefault $ kernelMod e
            f (Alit l e) = Alit l $ kernelMod e
            f (Acon dc tbs vbs e) = Acon dc tbs vbs $ kernelMod e
        in Case (kernelMod scrut) vb (wrapType t) $ map f alts
      e -> e
      where
      updateAlt (Acon (_,dc) _ vbs expr) = case getWrappedConstrs dc of
        --One corresponding constructor means we just have to replace
        --the data constructor itself (no field modification or anything)
        [Constr newDc _ _] -> [Acon newDc [] vbs $ 
                               mapExpr (replaceDc dc newDc) expr]
        --We have a constructor with a Dup field
        _ -> let constr@(Constr newDc _ tys) = fromMaybe updateErr (do 
                   dupField <- findDupArg expr
                   join $ (`findConstr` dc) <$> 
                          findIndex ((==dupField) . fst) vbs)
                 others = filter (/= constr) (getWrappedConstrs dc)
                --Introduce new pattern and modify alternative's body
             in let newPattern = Acon newDc [] (zip (map fst vbs) tys)
                    newEx = mapExpr (wrapDconExpr dc) $ 
                             mapExpr removeConCalls expr
                    newAlt = newPattern $ mapExpr updateCalls newEx
                in newAlt : mapMaybe (copyAlt dc (newPattern newEx)) others
      updateAlt alt = [alt]
      --Given a wrapped alternative (W ...) -> e where e has shallow and deep
      --calls in it, and another wrapped constructor definition W', make a new
      --alternative (W' ...) -> e' that performs the same computation as the 
      --first but moves around the shallow and deep calls to reflect that W' 
      --has differently typed fields.
      copyAlt dc (Acon _ _ vbs' e) (Constr newDc _ tys) = 
        let newBinds = zip (map fst vbs') tys in
        Just $ Acon newDc [] newBinds $ mapExpr (updateCalls . wrapDconExpr dc 
                                                . swapRecs 
                                                . replaceFieldTy newBinds) e
      copyAlt _ _ _ = Nothing
      --Find applications of shallow and deep calls, and change which is called 
      --if the argument's type has been changed
      swapRecs e = let (call,args,_) = collectArgs e
                   in case call of
        Var _ _ | call == shallowCall && dupTy `elem` map exprType args -> 
                        mkFuncApp deepCall [] args
                | call == deepCall && dupTy `notElem` map exprType args ->
                        mkFuncApp shallowCall [] args
        _ -> e
      --Update a variable's type if it's a pattern's field
      replaceFieldTy fields v@(Var n _) = maybe v (Var n . snd) $
                                          find ((==snd n) . fst) fields
      replaceFieldTy _ e = e
      --Replace a dcon expression with its wrapped equivalent
      replaceDc origDc newDc (Dcon (_,thisDc) t) 
        | thisDc == origDc = Dcon newDc (wrapType t)
      replaceDc _ _ e = e
      --Use the placement of a "deep" call in a dcon expression's argument list
      --to determine which wrapped constructor should be applied
      wrapDconExpr dc expr = let wrapDcons = map (snd . constrDcon) wrapConstrs
                             in case collectArgs expr of
        (Dcon (_,dc') _,args,_) | any (dc' `isPrefixOf`) wrapDcons &&
                                  any isDeepCall args -> 
          --Note: We use original, unwrapped dcon (dc) as arg to findConstr so we can
          --search all wrapped constructor definitions for the appropriate one
          let constr = join $ (`findConstr` dc) <$> findIndex isDeepCall args
          in case fromMaybe updateErr constr of
               Constr newDc _ tys -> let newTy = tArrows $ tys ++ [wrapTy]
                                     in mkFuncApp (Dcon newDc newTy) [] args
        _ -> expr 
      --Update any non-wrapper dcon or function application expressions that 
      --take a deep call as an argument directly now (they wouldn't have before
      --the wrapper transformation occurred)
      updateCalls expr = let (call,args,_) = collectArgs expr
                         in case call of
        Dcon dc ty | not ("Wrap" `isInfixOf` snd dc) && not ("Dup" `isSuffixOf` snd dc) &&
                     any isDeepCall args -> 
                      mkFuncApp (Dcon (fst dc, snd dc ++ "_Dup") ty) [] args
        _ -> expr

      --Find the variable field that is passed to a toDup call for the
      --type we'd like to wrap (toDup may be called on other types)
      findDupArg (App (Var (_,call) _) (Var (_, field) t)) 
        | "toDup" `isPrefixOf` call && t == origTy = Just field
      findDupArg (App e1 e2) = let rec2 = findDupArg e2
                               in if isNothing rec2 then findDupArg e1 else rec2
      findDupArg (Let _ e) = findDupArg e
      --TODO: This next case is hackey...what if we have different dupargs
      --in different branches?
      findDupArg (Case _ _ _ alts) = let vars = map altHelper alts
                                     in if length vars > 0
                                        then head vars
                                        else Nothing
        where
          altHelper (Adefault e) = findDupArg e
          altHelper (Alit _ e) = findDupArg e
          altHelper (Acon _ _ _ e) = findDupArg e
      findDupArg _ = Nothing

      --Remove calls to toDup or fromDup for the wrapped type (other calls
      --may exist for other types)
      removeConCalls (App (Var (_,n) t) e)
        | "toDup" `isPrefixOf` n && fst (collectArgTypes t) == dupTy = case e of
            Var arg _ -> Var arg dupTy
            _ -> error "Need to change type of non-var argument to toDup"
        | "fromDup" `isPrefixOf` n &&  fst (collectArgTypes t) == origTy = e
      removeConCalls e' = e'

      isDeepCall = (==deepCall) . getCall

      updateErr = error "No appropriate dc found in updateAlt"

    --replace any unwrapped type with its wrapped variant
    updateTypes (Var n t) = Var n $ wrapType t
    updateTypes (Lam bs e) = let updateVbs (Vb (n,t)) = Vb (n, wrapType t)
                                 updateVbs b = b
                             in Lam (map updateVbs bs) e
    updateTypes (Case e (vb,vbTy) ty alts) = 
      Case e (vb, wrapType vbTy) (wrapType ty) alts
    updateTypes e = e
                    
    -- Check if a definition contains a variable
    containsVar v@(Var (_,var) _) (Vdef _ _ expr) = go expr
      where
       go (Var (_,n) _)     = n == var
       go (App e1 e2)       = go e1 || go e2 
       go (Lam _ e)         = go e
       go (Appt e _)        = go e
       go (Let defs e)      = go e || any (containsVar v) defs
       go (Case e _ _ alts) = go e || any altHelper alts
         where
           altHelper (Adefault e')   = go e'
           altHelper (Alit _ e')     = go e'
           altHelper (Acon _ _ _ e') = go e'
       go _ = False
    containsVar _ _ = error "containsVar must be passed a variable expression"

    --Find a constructor with a duplicated type at the given index of its
    --type fields
    findConstr index dcon = find (\(Constr _ _ tys) -> length tys >= index && 
                              dupTy == (tys !! index)) $ getWrappedConstrs dcon
    --Find any wrapped constructors that were created from the given dcon
    getWrappedConstrs dcon = filter ((dcon `isPrefixOf`) . snd 
                                     . constrDcon) wrapConstrs
    -- Replace all instances of original type with its wrapped variant
    wrapType ty = tArrows $ map (\t -> if t == origTy then wrapTy else t) 
                          $ listTypes ty
    getCall e = let (call,_,_) = collectArgs e in call
    mainErr = error $ "Need to handle case where kernel_input " ++
                      " is called directly in main"
    noDefErr f = error $ f ++ " doesn't name a top-level definition"

--Does this expression contain a recursive call? 
-- TODO: Not looking
--for recCalls in all possible places (e.g. let-bound definitions)
hasRecCall :: Qual Var -> Exp -> Bool
hasRecCall name (Case s _ _ alts) = hasRecCall name s || any altHelper alts
  where
    altHelper (Adefault e) = hasRecCall name e
    altHelper (Alit _ e) = hasRecCall name e
    altHelper (Acon _ _ _ e) = hasRecCall name e
hasRecCall name (Let _ e) = hasRecCall name e
hasRecCall name e@(App _ _) = case collectArgs e of
                               (Var n _, args, _) -> n == name || any (hasRecCall name) args
                               (_,args,_) -> any (hasRecCall name) args
hasRecCall _ _ = False
    
vdefToVar :: Vdef -> Exp
vdefToVar (Vdef defName t _) = Var defName t

listTypes :: Ty -> [Ty]
listTypes ty = let (retTy, argTypes) = collectArgTypes ty
               in argTypes ++ [retTy]
