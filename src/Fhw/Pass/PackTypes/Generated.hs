{- 
Module : Fhw.Pass.PackTypes.Generated 
Description : Generate packed recursive datatypes and functions to convert 
              between packed and unpacked representations. 
-}

module Fhw.Pass.PackTypes.Generated (generatePackedTypes, genConversionFuncs) where

import Debug.Trace

import Fhw.Core.Core

import Data.List
import Data.Maybe
import Data.Tuple

import Control.Monad.State.Lazy

-- | State monad used for name generation
type MyState = State NameGenerator
newtype NameGenerator = NameGenerator {nextFreshID :: Int}

emptyGenerator :: NameGenerator
emptyGenerator = NameGenerator { nextFreshID = 0 }

generatePackedTypes :: Int -> [Tdef] -> [(Int,[Tdef])]
generatePackedTypes depth tdefs = 
  let generated = map (genPackTypes tdefs depth) tdefs 
  in map (packTypeFields generated) generated

packTypeFields :: [(Int,[Tdef])] -> (Int,[Tdef]) -> (Int,[Tdef])
packTypeFields _ (depth,[tdef]) = (depth,[tdef]) --leave lone tdefs alone
packTypeFields fullTList (depth,[uTdef,Data qtc tbinds cdefs]) = 
  (depth,[uTdef,Data qtc tbinds newCdefs])
  where
    newCdefs = map packFields cdefs

    packFields (Constr name binds tys) = Constr name binds $ map helper tys

    helper ty = let isPackedPair (_,l) = length l == 2 && getDataQtc l == getTyQtc ty
                    packedVersion = find isPackedPair fullTList
                    getDataQtc = getQtc . head 
                in if isNothing packedVersion 
                    then ty
                    else renameTy (getDataQtc $ snd $ fromJust packedVersion) ty

    getQtc (Data n _ _) = n

    getTyQtc (Tcon tc) = tc
    getTyQtc (Tapp t _) = getTyQtc t
    getTyQtc _ = (Nothing,"")
packTypeFields _ _ = error "Issue in packTypeFields"

-- | Find and pack recursive datatypes
-- We only unpack recursive datatypes with two variants: base and recursive.
-- Furthermore, we only unpack datatypes to the highest packing factor n such
-- that n <= depth and the resulting representation in hardware would be no
-- more than 128 bytes. 
genPackTypes :: [Tdef] -> Int -> Tdef -> (Int,[Tdef])
genPackTypes allTdefs depth tdef@(Data qtc tbinds cdefs@[_,_]) 
  | depth == 0 = (0,[tdef])
  | neitherNull cdefTuple && smallEnough = 
      (depth,[tdef,packTdef depth qtc tbinds (tupHeads cdefTuple)])
  | neitherNull cdefTuple = 
      trace ("Packing by " ++ show depth ++ " is too much for " ++ snd qtc ++ 
             "; trying the next lowest factor") genPackTypes allTdefs (depth-1) tdef
  where
    tupHeads (a,b) = (head a, head b)
    neitherNull (a,b) = not (null a || null b)
    cdefTuple = partition (contains recTy) cdefs
    recTy = mkType qtc tbinds
    contains ty (Constr _ _ tys) = ty `elem` tys
    smallEnough = let recDef = head $ filter (contains recTy) cdefs
                      tys = constrTypes recDef 
                      size = foldr calcSize 0 tys
                      (recTys,nonRecTys) = partition ((==qtc) . getTcon) tys
                      totalSize = getTotalSize depth size (length recTys) nonRecTys
                  in totalSize < 1024
    calcSize :: Ty -> Int -> Int 
    calcSize (Tcon (_,"Int")) accum = 32 + accum
    calcSize (Tcon mn@(_,name)) accum 
      | name == snd qtc || --recursive types
        isPrim mn = 32 + accum --hack for primitive types
      | otherwise = let newTdef = fromMaybe (error $ "Couldn't find type " ++ name) $
                                  find ((==name) . tdefName) allTdefs
                        tySets = (map constrTypes . tdefConstrs) newTdef
                        largestVariant = if isRecTdef newTdef
                                          then 32 --size of a pointer
                                          else maximum $ map (foldr calcSize 0) tySets
                    in largestVariant + accum
    calcSize _ _ = error "Unexpected type in calcSize"

    getTotalSize 0 size _ _  = size
    getTotalSize factor size refCount nonRecs = 
      let recurse = getTotalSize (factor-1) size refCount nonRecs
      in foldr calcSize 0 nonRecs + sum (replicate refCount recurse)
                                          
                    
genPackTypes _ _ tdef = (0,[tdef]) --Ignoring newtypes and datatypes without 2 variants

-- | Rename all references to a recursive type 
renameTy :: Qual Tcon -> Ty -> Ty
renameTy qtc@(_,tc) (Tcon t) | t == qtc = Tcon (mname, 'P' : tc) 
renameTy qtc (Tapp ty1 ty2) = Tapp (renameTy qtc ty1) (renameTy qtc ty2)
renameTy _ ty = ty

-- | Construct a packed type definition
packTdef :: Int -> Qual Tcon -> [Tbind] -> (Cdef,Cdef) -> Tdef
packTdef depth qtc@(_, tc) topTbinds (recVariant, baseVariant) =
  Data (mname, 'P' : tc) topTbinds [baseDef,recDef',packrecDef]
  where
   --Construct a packed datatype variant with a type-modifying function
   makeVariant (Constr (_,name) binds tys) suffix modFunc =
    Constr (mname, name ++ [suffix]) binds (modFunc tys)

   baseDef = makeVariant baseVariant '\'' id

   recDef' = makeVariant recVariant '\'' (map (renameTy qtc)) 

   packrecDef = makeVariant recVariant 'P' (map (renameTy qtc) . unrollFunc)
    where
      --we want to unroll references 'depth' times
      unrollFunc = flip (!!) depth . iterate (concatMap unroll)

      --only unroll type if it's a recursive reference
      unroll ty = fromMaybe [ty] $ unrollType ty $ reverse topTbinds

      --return unrolled type if we find all type args applied to the
      --recursive type constructor
      unrollType (Tcon t) _  = 
        if t == qtc then Just (getTys recVariant) else Nothing
      unrollType (Tapp t1 (Tvar tv)) (tb:tbs) =
        if tv == fst tb then unrollType t1 tbs else Nothing
      unrollType _ _ = Nothing

      getTys (Constr _ _ tys) = tys

-- | Generate the 'pack' and 'unpack' conversion functions for a given datatype
genConversionFuncs :: [(Int,(Tdef,Tdef))] -> [[Vdef]]
genConversionFuncs tdefs = map (generate tdefs) tdefs

generate :: [(Int,(Tdef,Tdef))] -> (Int,(Tdef,Tdef)) -> [Vdef]
generate allTPairs (depth,
                   (Data uqtc typeArgs cdefs,
                    Data pqtc _    [Constr bName' _ bTys',
                                    Constr rName' _ rTys',
                                    Constr prName _ prTys])) = 
  [Vdef (mname, "pack" ++ snd uqtc) pType packExpr
  ,Vdef (mname, "unpack" ++ snd pqtc) uType unpackExpr]
  where
    --Find the name and fields of the base and recursive variants of
    --the original type.
    (bName, bTys, rName, rTys) = case partition (contains recTy) cdefs of
      ([Constr recN _ recTys], [Constr baseN _ baseTys]) -> 
        (baseN, baseTys, recN, recTys)
      _ -> error "Unexpected form of original type passed to generate" 
    recTy = mkType uqtc typeArgs
    contains ty (Constr _ _ tys) = ty `elem` tys


    tyConPairs = map tdefToTcon allTPairs
      where
        tdefToTcon (_,(Data qdc1 _ _, Data qdc2 _ _)) = (qdc1,qdc2)

    --Type constructors applied to their polymorphic type arguments
    --TODO: These TYPES ARE WRONG. In some places they should take an argument 
    -- e.g. currently (:_Int) has type []_Int instead of type (Int -> []_Int)
    unpackType = makeConvType uqtc 
    packType = makeConvType pqtc 

    --Conversion function types
    pType = makeFuncType unpackType packType typeArgs
    uType = makeFuncType packType unpackType typeArgs
    makeFuncType argTy resTy = flip tForalls (tArrow argTy resTy)

    --Conversion function bodies (lambda -> case) with case alternatives
    packExpr = makeFuncBody typeArgs unpackType packType palts 
    palts = [Acon bName [] baseBinds baseExp,
             Acon rName [] recBinds  recExp]
    unpackExpr = makeFuncBody typeArgs packType unpackType ualts
    ualts = [Acon bName' [] bBinds' bExp',
             Acon rName' [] rBinds' rExp',
             Acon prName [] prBinds prExp]
             
    --Generate the top-level lambda and case expression
    --for the conversion functions
    makeFuncBody binds argTy retTy alts =
      Lam (lamBinds binds argTy) $ 
      Case (Var (Nothing, "arg") argTy) ("dummy",argTy) retTy alts
      where
        lamBinds bs ty = map Tb bs ++ [Vb ("arg",ty)]

    --Patterns for each top-level case alternative
    ([baseBinds,recBinds,bBinds',rBinds',prBinds],curState) = 
      runState (mapM (mapM genBind) [bTys,rTys,bTys',rTys',prTys]) emptyGenerator

    --Base case expressions for both functions
    baseExp = makeBase bName' packType "pack" baseBinds
    bExp'   = makeBase bName unpackType "unpack" bBinds'
    makeBase n t s bs = mkFuncApp (Dcon n t) [] $ map (applier s) bs

    --Packed and Bubbled recursive case expressions for unpack
    recApp = makeExpApp (Dcon rName $ tArrows (rTys ++ [unpackType])) 
    rExp' = recApp $ map (applier "unpack") rBinds'
    prExp = recApp $ unpack depth rTys (map (applier "unpack") prBinds)
      where
        nestedRtys d ty = if ty == unpackType && d > 1
                            then concatMap (nestedRtys (d-1)) rTys
                            else [ty]
                            
        unpack _ [] _ = []
        unpack d (origTy:tys) exprs = 
          if origTy == unpackType
          then recApp (recArgs exprs) : unpack d tys laterExps
          else head exprs : unpack d tys (tail exprs)
          where
            argCount = length recBinds
            nestedArgCount = length (concatMap (nestedRtys d) rTys)
            recArgs = if d > 1 then unpack (d-1) rTys else take argCount
            laterExps = flip drop exprs $ 
                        if d > 1
                          then nestedArgCount
                          else argCount

    --Recursive case expression for pack with specified depth
    recExp = evalState (makeCases depth recBinds [] []) curState
      where
        makeCases d (p:pats) l stack =  -- the 'stack' holds previous patterns
          if (/=) unpackType (snd p) then makeCases d pats (p:l) stack
          else do newPats <- mapM genBind rTys
                  nestedCase <- if d == 1 --stop recursing on our new pointers and patterns
                       then makeCases d pats (reverse newPats ++ l) stack
                       else makeCases (d-1) newPats l (pats:stack)
                  return $ Case (Var (Nothing, fst p) (snd p))
                    ("dummy", unpackType) packType
                    [Acon rName [] newPats nestedCase,          
                     Adefault (helperApp rName' dConUnpackType recBinds)] 
          where
            dConUnpackType = tArrows $ rTys' ++ [packType]
        makeCases d pats l (ps:rest) = 
          makeCases (d+1) ps (reverse pats ++ l) rest
        makeCases _ pats l [] = 
          return $ helperApp prName dConPackType (reverse l ++ pats)
          where
            dConPackType = tArrows $ prTys ++ [packType]

        helperApp n t args = makeExpApp (Dcon n t) (map (applier "pack") args)

    --Apply pack or unpack to a variable
    applier version (var,varTy) = 
      let modPairs = if version == "unpack" then map swap else id
          caller = if version == "unpack" then unpackCall else packCall
          myTy = getTcon varTy
          otherTy = fromMaybe (Nothing,"") $ lookup myTy $ modPairs tyConPairs
      in if null $ snd otherTy
          then Var (Nothing,var) varTy
          else makeExpApp (caller myTy otherTy) [Var (Nothing,var) varTy]

    packCall = makeCall "pack"
    unpackCall = makeCall "unpack"

    --Make a call to a pack/unpack function
    makeCall name ty1 ty2 = 
      Var (mname, name++snd ty1) (tForalls typeArgs $ tArrow (makeConvType ty1) (makeConvType ty2))

    --helpers to reduce code redundancy--
    makeExpApp ex = mkFuncApp ex bindsToTys
    bindsToTys = map (\(ty,_) -> Tvar ty) typeArgs
    makeConvType t = mkType t typeArgs

generate  _ _ = 
  error "Trying to make a pack function for unconverted datatype"

--Generate a fresh binding for a case alternative
--pattern
genBind :: Ty -> MyState Vbind
genBind ty = do
  name <- freshName
  return (name,ty)

-- Generate a fresh variable name
freshName :: MyState String
freshName = do
  s <- get
  let n = nextFreshID s
  put s { nextFreshID = n + 1 }
  return $ "local_" ++ show n

mname :: Maybe Mname
mname = Nothing --Just $ M (P "packedPass-prim",[],"Main") 
--TODO: What should the module name be?
