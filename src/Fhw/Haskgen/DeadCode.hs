{- |
Module : Fhw.Haskgen.DeadCode 
Description : Remove dead code from a core file.

This module will be used by Haskgen to avoid the overly bloated programs
generated using linkcore.

Both Haskgen and DeadCode make a number of simplifications and modifications to 
Core code to make it more manageable. Any of these could lead to issues down the road,
so I'll list them here as a quick reference if/when things start breaking:

Issue                         Solution
----------                    ----------
"BaseGHCumNum" type appears  I replace any instances of this type constructor with the
sometimes in polymorphic      similar "BaseGHCNumTNum" constructor. This seems to work.
functions, but it doesn't
seem to be defined in any
external core files
-}

module Fhw.Haskgen.DeadCode (removeCode) where

import Fhw.Core.Core
import qualified Data.Set as S
--import Debug.Trace

--I'm using a Table ADT to store the names of all the variable and type
--definitions that are actually used via the main function.
--Types are in the first list, variables in the second.
data Table = Top (S.Set TString) (S.Set VString) deriving (Show)

type TString = Qual String
type VString = Qual String

--toplevel function called by Haskgen
removeCode :: Module -> [String] -> Module
removeCode (Module m tdefs vdefs) seed =
  let isVarInNameList (Vdef (pkg,var) _ _) = var `elem` seed && isMain pkg
      isTyInNameList (Data (pkg,tyname) _ _ ) = tyname `elem` seed && isMain pkg
      importantvars = filter isVarInNameList vdefs
      importanttys  = filter isTyInNameList tdefs
      isMain (Just (M (P name,_,_))) = name == "main"
      isMain Nothing = False
  in case importantvars of
      [] -> Module m [] []
      _  -> 
        let starttable' = foldr walkVars (Top S.empty S.empty) importantvars
            starttable  = foldr walkTys  starttable' importanttys
            program = generateDefinitions starttable (S.fromList vdefs) (S.fromList tdefs)
        in Module m (S.toList $ snd program) (S.toList $ fst program)

--Get variable names in table
getTableVars :: Table -> S.Set VString
getTableVars (Top _ vs) =  vs

--Get type names in table
getTableTys :: Table -> S.Set TString
getTableTys (Top ts _) = ts

--Get a variable name from a definition
getVarName :: Vdef -> VString
getVarName (Vdef varname _ _) =  varname

--Get a type name from a definition
getTypeName :: Tdef -> TString
getTypeName (Data tyname _ _ ) =  tyname

--Given a symbol table and lists of all variable and type
--definitions in a program, find all definitions names in
--table and add all names mentioned in these definitions
--to a new table. Recurse on the the new table until
--no changes are seen between the old and the new.
--Return: all definitions required by this program
generateDefinitions :: Table -> S.Set Vdef -> S.Set Tdef -> (S.Set Vdef,S.Set Tdef)
generateDefinitions table vdefs tdefs =
  let isLiveVdef v = getVarName v `S.member` tablevars
      isLiveTdef t = getTypeName t `S.member` tabletys
      (livingVds,unknownVds) = S.partition isLiveVdef vdefs
      (livingTds,unknownTds) = S.partition isLiveTdef tdefs
      extraTds = inspectCDefs tablevars (S.toList tdefs)
      Top tds vds = S.foldr walkTys (S.foldr walkVars table vdefs)  extraTds
      sameTable = vds == tablevars && tds == tabletys 
  in if sameTable 
     then (livingVds,livingTds `S.union` extraTds)
     else let (recVdefs,recTdefs) = 
                generateDefinitions (Top tds vds) unknownVds unknownTds
          in (livingVds `S.union` recVdefs, livingTds `S.union` recTdefs)
  where tabletys = getTableTys table
        tablevars = getTableVars table

--Return any type definitions from argument list that use
--data constructors mentioned in string list
inspectCDefs :: S.Set VString -> [Tdef] -> S.Set Tdef
inspectCDefs _  [] = S.empty
inspectCDefs tablevars (t:tdefs) = case t of
   (Data _ _ cdefs ) -> if hasDCon cdefs tablevars then S.insert t $ inspectCDefs tablevars tdefs
                        else inspectCDefs tablevars tdefs
                                    
--Check if any data constructor in list of constructor definitions
--is mentioned in given string list
hasDCon :: [Cdef] -> S.Set VString -> Bool
hasDCon [] _ = False
hasDCon (Constr dcon _ _ :cs) names = ( dcon `S.member` names) || hasDCon cs names

--Add names mentioned in variable definition to symbol table
walkVars ::  Vdef -> Table -> Table
walkVars  vd@(Vdef var ty expr) (Top tys vars)= 
  if S.null tys && S.null vars
    then Top (getTyNames ty `S.union` getTysExpr expr) 
             (S.insert var (getVarsExpr expr))
    else if getVarName vd `S.notMember` vars
         then Top tys vars
         else Top (S.unions [getTyNames ty,getTysExpr expr,tys])
                  (S.insert var $ S.union vars (getVarsExpr expr))


--Add names mentioned in type definitions to symbol table
walkTys :: Tdef -> Table  -> Table
walkTys  (Data tyname _ cdefs) (Top types vars)= 
  Top (S.insert tyname (S.unions (types : map getTysConstr cdefs))) vars 

--gets all type variables mentioned in a 
--type construction defintion (cdefs)
getTysConstr :: Cdef -> S.Set TString
getTysConstr (Constr _ _ tys) = S.unions $ map getTyNames tys

--Get all type variables mentiones in a variable definition
--(currently only occurs inside a let statement)
getTysVdef :: Vdef -> S.Set TString
getTysVdef (Vdef _ ty expr) = S.union (getTyNames ty) (getTysExpr expr)

--Get all type variables mentioned in a type
getTyNames :: Ty -> S.Set TString
getTyNames (Tvar tvar) = S.singleton (Nothing,tvar)
getTyNames (Tcon tcon) = S.singleton tcon
getTyNames (Tapp (Tapp (Tcon (_, "->")) ty1) ty2) = S.union (getTyNames ty1) (getTyNames ty2)
getTyNames (Tapp ty1 ty2) = S.union (getTyNames ty1) (getTyNames ty2)
getTyNames (Tforall _ ty) = getTyNames ty
getTyNames _ = S.empty

--Get all type variables mentioned in an expression
getTysExpr :: Exp -> S.Set TString
getTysExpr (Var _ ty)              = getTyNames ty
getTysExpr (Dcon _ ty)             = getTyNames ty
getTysExpr (Appt ex ty)            = getTysExpr ex `S.union` getTyNames ty
getTysExpr (Let vdefs expr)        = S.unions (getTysExpr expr : map getTysVdef vdefs) 
getTysExpr (App ex1 ex2)           = getTysExpr ex1 `S.union` getTysExpr ex2
getTysExpr (Lam _ expr)            = getTysExpr expr
getTysExpr (Case expr _ _ cases)   =
  S.unions (getTysExpr expr : map (\c -> case c of
                         (Acon _ _ _ ex) -> getTysExpr ex
                         (Alit _ ex)     -> getTysExpr ex 
                         (Adefault ex)   -> getTysExpr ex) cases)
getTysExpr _                      = S.empty

--Get all variable names mentioned in a variable definition
--(currently only occurs in a let statement)
getVarsVdef :: Vdef -> S.Set VString
getVarsVdef (Vdef _ _ expr) = getVarsExpr expr

--Get all variable names mentioned in an expression
getVarsExpr :: Exp -> S.Set VString
getVarsExpr (Appt ex _)           = getVarsExpr ex
getVarsExpr (Dcon dcon _)         = S.singleton dcon
getVarsExpr (Let vdefs expr)      = S.unions (getVarsExpr expr : map getVarsVdef vdefs)
getVarsExpr (App ex1 ex2)         = getVarsExpr ex1 `S.union` getVarsExpr ex2
getVarsExpr (Lam _ expr)          = getVarsExpr expr
getVarsExpr (Case expr _ _ cases) = S.unions (getVarsExpr expr :
                                    map (\c -> case c of
                                      (Acon dcon _ _ ex) -> S.insert dcon (getVarsExpr ex)
                                      (Alit _ ex)     -> getVarsExpr ex 
                                      (Adefault ex)   -> getVarsExpr ex) cases)
getVarsExpr (Var var _)           = S.singleton var 
getVarsExpr (Lit _)               = S.empty
