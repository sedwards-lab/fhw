{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE MagicHash #-}
{-# LANGUAGE BangPatterns #-}
module Fhw.Pass.Dataflow.NodeLib where

import Data.Maybe
import Data.List (find,elemIndex)
import Data.Data
import qualified Data.Map as Map
import Data.Typeable
import Control.Applicative
import qualified Data.Sequence as S

import Debug.Trace

data Pointer a = Pointer a deriving (Show,Eq,Typeable,Data)
data Go     = Go deriving (Show,Eq,Typeable,Data)
data Choice = C1 | C2 | C3 | C4 | C5 | C6 deriving (Show,Eq,Typeable,Data)
data Wrapper a = Wrapped a | NothWrap String deriving (Show,Eq,Typeable,Data)

data EmpList = EmpNil | EmpCons (Pointer EmpList) deriving (Show,Eq,Typeable,Data)
data List = Nil | Cons Int (Pointer List) deriving (Show,Eq,Typeable,Data)
data CTmap1 = Cont0 | Cont1 Int (Pointer CTmap1) deriving (Show,Eq,Typeable,Data)

data Tup2 a b = Tup2 a b deriving (Show,Eq,Typeable,Data)
data Tup3 a b c = Tup3 a b c deriving (Show,Eq,Typeable,Data)
data Tup4 a b c d = Tup4 a b c d deriving (Show,Eq,Typeable,Data)

--Type synonyms to make BaseLine.hs happy
type CTfilter1 = CTmap1
type MyBool = Bool
type ContList = List

data Tree = Leaf | Branch (Pointer Tree) Int (Pointer Tree) deriving (Show,Eq,Typeable,Data)
data CTbuildTree = ContBuildTBoS
                   | ContBuildT1 Int Go Int (Pointer CTbuildTree)
                   | ContBuildT0 Int (Pointer Tree) (Pointer CTbuildTree)
                      deriving (Show,Eq,Typeable,Data)
data CTlargeTree = ContLargeTBoS
                   | ContLargeT2 Int Int Go (Pointer CTlargeTree)
                   | ContLargeT1 Go Int Int (Pointer CTlargeTree)
                   | ContLargeT0 Int (Pointer Tree) (Pointer CTlargeTree)
                      deriving (Show,Eq,Typeable,Data)

data CTtreeMap = ContMapTBoS
                 | ContMapT1 (Pointer Tree) Go Int (Pointer CTtreeMap)
                 | ContMapT0 Int (Pointer Tree) (Pointer CTtreeMap)
                      deriving (Show,Eq,Typeable,Data)
data CTdfs = CTdfsBoS
             | CTdfsT2 Int (Pointer Tree) (Pointer CTdfs)
             | CTdfsT1 (Pointer List) (Pointer CTdfs) Int
                      deriving (Show,Eq,Typeable,Data)
data CTmergeSort = CTmergeSortbos
                | CTmergeSort1 (Pointer List) (Pointer CTmergeSort)
                | CTmergeSort0 (Pointer List) (Pointer CTmergeSort)
                      deriving (Show,Eq,Typeable,Data)
data CTmerge = CTmergebos
            | CTmerge1 Int (Pointer CTmerge)
            | CTmerge0 Int (Pointer CTmerge)
                  deriving (Show,Eq,Typeable,Data)

-- | Dummy sink node
out :: Maybe a -> Bool
out a = False
sinkOut = out

{---------------------
  Primitive functions
---------------------}

add :: Maybe Int -> Maybe Int -> Bool -> (Maybe Int, Bool, Bool)
add i1 i2 stop = ((+) <$> i1 <*> i2,stopO,stopO)
  where
    stopO = stop || isNothing i1 || isNothing i2

sub :: Maybe Int -> Maybe Int -> Bool -> (Maybe Int, Bool, Bool)
sub i1 i2 stop = ((-) <$> i1 <*> i2,stopO,stopO)
  where
    stopO = stop || isNothing i1 || isNothing i2

divide :: Maybe Int -> Maybe Int -> Bool -> (Maybe Int, Bool, Bool)
divide i1 i2 stop = (quot <$> i1 <*> i2,stopO,stopO)
  where
    stopO = stop || isNothing i1 || isNothing i2

eq :: Maybe Int -> Maybe Int -> Bool -> (Maybe Bool, Bool, Bool)
eq = primComp (==)

gt :: Maybe Int -> Maybe Int -> Bool -> (Maybe Bool, Bool, Bool)
gt = primComp (>)

lt :: Maybe Int -> Maybe Int -> Bool -> (Maybe Bool, Bool, Bool)
lt = primComp (<)

primComp func i1 i2 stop = (func <$> i1 <*> i2,stopO,stopO)
  where
    stopO = stop || isNothing i1 || isNothing i2

{---------------------
  Merge
---------------------}

merge2 in1 in2 stop = (dOut,stop1,stop2)
  where
    dOut = getDout in1 in2  
    getDout (Just _)    _        = in1
    getDout _           (Just _) = in2
    getDout _           _        = Nothing

    stop1 = stop || isNothing in1
    stop2 = stop || isJust in1 || isNothing in2

merge3 in1 in2 in3 stop = (dOut,stop1,stop2,stop3)
  where
    dOut = getDout in1 in2 in3
    getDout (Just _)    _        _        = in1
    getDout _           (Just _) _        = in2
    getDout _           _        (Just _) = in3
    getDout _           _        _        = Nothing

    stop1 = stop  || isNothing in1
    stop2 = stop1 || isJust in1 || isNothing in2
    stop3 = stop2 || isJust in2 || isNothing in3

merge4 in1 in2 in3 in4 stop = (dOut,stop1,stop2,stop3,stop4)
  where
    dOut = getDout in1 in2 in3 in4
    getDout (Just _)    _        _        _        = in1
    getDout _           (Just _) _        _        = in2
    getDout _           _        (Just _) _        = in3
    getDout _           _        _        (Just _) = in4
    getDout _           _        _        _        = Nothing

    stop1 = stop  || isNothing in1
    stop2 = stop1 || isJust in1 || isNothing in2
    stop3 = stop2 || isJust in2 || isNothing in3
    stop4 = stop3 || isJust in3 || isNothing in4

{---------------------
  MergeChoice
---------------------}

mergeChoice1 in1 stopChoice stopVal st = 
  (dOut,choice,stopOut1,nextState)
  where
    (dOut,choice,stops,nextState) = 
     funcMerge [in1] stopChoice stopVal st
    [stopOut1] = stops

mergeChoice2 in1 in2 stopChoice stopVal st = 
  (dOut,choice,stopOut1,stopOut2,nextState)
  where
    (dOut,choice,stops,nextState) = 
     funcMerge [in1,in2] stopChoice stopVal st
    [stopOut1,stopOut2] = stops

mergeChoice3 in1 in2 in3 stopChoice stopVal st = 
  (dOut,choice,s1,s2,s3,nextState)
  where
    (dOut,choice,stops,nextState) =
      funcMerge [in1,in2,in3] stopChoice stopVal st
    [s1,s2,s3] = stops

mergeChoice4 in1 in2 in3 in4 stopChoice stopVal st = 
  (dOut,choice,s1,s2,s3,s4,nextState)
  where
    (dOut,choice,[s1,s2,s3,s4],nextState) = 
      funcMerge [in1,in2,in3,in4] stopChoice stopVal st

mergeChoice5 in1 in2 in3 in4 in5 stopChoice stopVal st = 
  (dOut,choice,s1,s2,s3,s4,s5,nextState)
  where
    (dOut,choice,[s1,s2,s3,s4,s5],nextState) = 
      funcMerge [in1,in2,in3,in4,in5] stopChoice stopVal st

mergeChoice6 in1 in2 in3 in4 in5 in6 stopChoice stopVal st = 
  (dOut,choice,s1,s2,s3,s4,s5,s6,nextState)
  where
    (dOut,choice,[s1,s2,s3,s4,s5,s6],nextState) = 
      funcMerge [in1,in2,in3,in4,in5,in6] stopChoice stopVal st

-- | n-input mergeChoice node for the first argument of a function
funcMerge :: (Eq a,Show a)=> [Maybe a] -> Bool -> Bool -> Maybe [Bool]
          -> (Maybe a, Maybe Choice,[Bool],Maybe [Bool])
funcMerge inputs stopVal stopChoice st = (dOut,choice,stopOuts,nextState)
  where
    choice = makeOut 0 mergeChoice 
    dOut   = makeOut 1 arbData 
    stopOut1 = if isNothing st
                then stopChoice || stopVal
                else stopChoice && not b1 ||
                     stopVal    && not b2
    stopOuts = zipWith (\inp s -> isNothing inp || s) inputs (reverse $ foldr genStops [stopOut1] (tail $ reverse inputs))
    genStops inp stops = (isJust inp || head stops) : stops

    mergeChoice = do val <- find isJust inputs
                     index <- val `elemIndex` inputs
                     return $ case index of
                      0 -> C1 
                      1 -> C2 
                      2 -> C3 
                      3 -> C4 
                      4 -> C5 
                      5 -> C6 
                      _ -> error "Unhandled index in mergechoice"
    arbData = do val <- find isJust inputs
                 return $ fromJust val

    makeOut index val = if not (bits !! index)
                        then val else Nothing

    bits@[b1,b2] = fromMaybe [False,False] st

    nextState = let bits' = [isJust choice && not stopChoice || b1
                            ,isJust dOut   && not stopVal    || b2]
                in Just $
                   if isNothing st || and bits' then replicate 2 False else bits'
    
{---------------------
  Buffers
---------------------}

-- | Instantiate all input buffer components and pass state
inBuffer :: Maybe a -> Bool -> Maybe a -> 
            (Maybe a, Bool, Maybe a) --output, stopOut, nextSt
inBuffer dSource stopSource state = (inBufOut,inBufStop,newState)
 where
  inBufQ = iBufQ state
  inBufD = iBufD dSource inBufQ inBufStop stopSource
  inBufOut = iBufOut dSource inBufQ inBufStop
  inBufStop = iBufStop inBufQ 
  newState = inBufD

  iBufQ :: Maybe a -> Maybe a
  iBufQ prevState = prevState
  
  iBufD :: Maybe a -> Maybe a -> Bool -> Bool -> Maybe a
  iBufD iData qOut iStop cStop 
    | iStop && not cStop = Nothing --Empty buffer
    | not iStop && cStop = iData   --Load input into buffer
    | otherwise          = qOut    --Maintain current buffer entry
  
  iBufOut :: Maybe a -> Maybe a -> Bool -> Maybe a
  iBufOut iData qOut iStop = if iStop then qOut else iData
  
  iBufStop :: Maybe a -> Bool
  iBufStop (Just _) = True
  iBufStop Nothing  = False

-- | Instantiate all output buffer components and pass state
outBuffer :: Maybe a -> Bool -> Maybe a -> 
             (Maybe a, Bool, Maybe a) 
outBuffer dSource stopSource state = (outBufQ,outBufStop,newState)
 where
  outBufQ = oBufQ state
  outBufD = oBufD dSource outBufQ outBufStop 
  outBufStop = oBufStop outBufQ stopSource
  newState = outBufD
  
  oBufD :: Maybe a -> Maybe a -> Bool -> Maybe a
  oBufD cData qOut oStop = if oStop then qOut else cData
  
  oBufQ :: Maybe a -> Maybe a
  oBufQ prevState = prevState
  
  oBufStop :: Maybe a -> Bool -> Bool
  oBufStop (Just qout) True = True
  oBufStop _           _    = False

outBuffer2 = outBufferVar 2
outBuffer3 = outBufferVar 3
outBuffer4 = outBufferVar 4
outBuffer5 = outBufferVar 5
outBuffer10 = outBufferVar 10
outBuffer20 = outBufferVar 20
outBuffer30 = outBufferVar 30
outBuffer50 = outBufferVar 50
outBuffer100 = outBufferVar 100

-- | Output buffer with settable latency (for modeling pipelined memory ops)
outBufferVar :: Int -> Maybe a -> Bool -> Maybe (Int,S.Seq (Int,a)) -> (Maybe a,Bool,Maybe (Int,S.Seq (Int,a)))
outBufferVar latency dIn stopIn !state = (dOut,stopOut,newState)
  where
    dOut | isNothing state || S.null (snd $ fromJust state) = Nothing
         | otherwise = let (totCyc,st) = fromJust state
                           ((cyc,val) S.:< _) = S.viewl st
                       in if cyc <= totCyc
                            then Just val
                            else Nothing

    stopOut = stopIn && isJust state && (S.length (snd $ fromJust state) == latency)

    newState | isNothing state && isNothing dIn = Just (1,S.empty)
             | isNothing state && isJust dIn = Just (1,S.singleton (1 + latency,fromJust dIn))
             | otherwise = Just $ helper (fromJust state) stopIn dIn
     where 
      helper (!totCyc,!st) s d = (newCyc,createNewState s d)
        where 
          newCyc = totCyc + 1

          createNewState True (Just v) = if S.length st == latency 
                                              then st
                                              else st S.|> (totCyc+latency,v)
          createNewState True Nothing = st
          createNewState False (Just v) = if S.null st
                                           then st S.|> (totCyc+latency,v)
                                           else let !((cyc,_) S.:< rest) = S.viewl st
                                                in if cyc <= totCyc
                                                     then rest S.|> (latency + totCyc,v)
                                                     else st   S.|> (latency + totCyc,v)
          createNewState False Nothing = if S.null st
                                          then st
                                          else let !((cyc,_) S.:< rest) = S.viewl st
                                               in if cyc <= totCyc
                                                    then rest 
                                                    else st


                  

-- | Infinite FIFO with bypass (if stop is low and the buffer is empty, valid 
-- input data can bypass the FIFO without a delay)
infBuffer :: Maybe a -> Bool -> Maybe (Int,[a]) -> (Maybe a,Bool,Maybe (Int,[a]))
infBuffer dIn stopIn state = (dOut,False,newState)
  where
    dOut | isNothing state || null (snd (fromJust state)) = dIn
         | otherwise = fmap (head . snd) state

    newState | isNothing state && stopIn = fmap (\val -> (1,[val])) dIn
             | isNothing state = Nothing
             | otherwise = Just $ createNewState (fromJust state) stopIn dIn

    createNewState (n,[])  True  (Just val) = (n,[val])
    createNewState (n,[])  _     _          = (n,[])
    createNewState (n,s)   True  (Just val) = let newList = s ++ [val]
                                              in if length newList > n
                                                   then (length newList, newList)
                                                   else (n, newList)
    createNewState (n,s)   False (Just val) = (n,tail s ++ [val])
    createNewState (n,s)   True  Nothing    = (n,s)
    createNewState (n,s)   False Nothing    = (n,tail s)

{---------------------
  Memory Operations
---------------------}

-- | Write to memory
write :: Maybe a -> Bool -> (Maybe (Pointer a),Bool)
write input stop = (fmap Pointer input, stop)

-- | Read from memory
readNode :: Maybe (Pointer a) -> Bool ->  (Maybe a,Bool)
readNode pntr stopSource = (dOut,stopOut)
  where
    stopOut = stopSource 
    dOut = case pntr of
            Just (Pointer k) -> Just k
            Nothing -> Nothing

write_List :: Maybe List -> Bool -> (Maybe (Pointer List), Bool)
write_List = write
write_EmpList = write

write_Tree :: Maybe Tree -> Bool -> (Maybe (Pointer Tree), Bool)
write_Tree = write

write_CTmap1 :: Maybe CTmap1 -> Bool -> (Maybe (Pointer CTmap1), Bool)
write_CTmap1 = write

write_CTdfs       = write
write_ContList    = write
write_CTmerge     = write
write_CTmergeSort = write
write_CTlargeTree = write

write_CTtreeMap :: Maybe CTtreeMap -> Bool -> (Maybe (Pointer CTtreeMap), Bool)
write_CTtreeMap = write

write_CTbuildTree :: Maybe CTbuildTree -> Bool -> (Maybe (Pointer CTbuildTree), Bool)
write_CTbuildTree = write

write_CTfilter1 :: Maybe CTmap1 -> Bool -> (Maybe (Pointer CTmap1), Bool)
write_CTfilter1 = write

read_Pointer_Tree :: Maybe (Pointer Tree) -> Bool -> (Maybe Tree, Bool)
read_Pointer_Tree = readNode

read_Pointer_List        = readNode
read_Pointer_ContList    = readNode
read_Pointer_CTmerge     = readNode
read_Pointer_CTmergeSort = readNode
read_Pointer_CTlargeTree = readNode

read_Pointer_CTmap1 :: Maybe (Pointer CTmap1) -> Bool -> (Maybe CTmap1, Bool)
read_Pointer_CTmap1 = readNode

read_Pointer_CTtreeMap :: Maybe (Pointer CTtreeMap) -> Bool -> (Maybe CTtreeMap,Bool)
read_Pointer_CTtreeMap = readNode

read_Pointer_CTbuildTree :: Maybe (Pointer CTbuildTree) -> Bool -> (Maybe CTbuildTree,Bool)
read_Pointer_CTbuildTree = readNode

read_Pointer_CTfilter1 :: Maybe (Pointer CTmap1) -> Bool -> (Maybe CTmap1, Bool)
read_Pointer_CTfilter1 = readNode

read_Pointer_CTdfs = readNode
{---------------------
  Data Constructors
---------------------}

-- | This should be modeling the wrapping of an Int# in an I# constructor,
-- but ghc won't let us express the type "Maybe Int#" (Maybe expects an unlifted
-- type). Thus, I'm pretending
-- that Int#s are just Ints and that the I# data constructor is just an
-- identity function.
dcon_I_ :: Maybe Int -> Bool -> (Maybe Int,Bool)
dcon_I_ input stop = (input,stop)


dcon_EmpCons input stop = (EmpCons <$> input,stop)

dcon_Cons             = makeDcon2 Cons
dcon_ListC1           = makeDcon2 Cons
dcon_Branch           = makeDcon3 Branch
dcon_LCall_map10      = makeDcon2 Cont1
dcon_Cont             = makeDcon2 Cont1
dcon_LCall_dfs1       = makeDcon3 CTdfsT1
dcon_LCall_dfs2       = makeDcon3 CTdfsT2
dcon_LCall_buildTree1 = makeDcon4 ContBuildT1
dcon_LCall_buildTree0 = makeDcon3 ContBuildT0
dcon_LCall_treeMap1   = makeDcon4 ContMapT1
dcon_LCall_treeMap0   = makeDcon3 ContMapT0
dcon_LCall_mergeSort1 = makeDcon2 CTmergeSort1
dcon_LCall_mergeSort0 = makeDcon2 CTmergeSort0
dcon_LCall_merge1     = makeDcon2 CTmerge1
dcon_LCall_merge0     = makeDcon2 CTmerge0
dcon_LCall_largeTree2 = makeDcon4 ContLargeT2
dcon_LCall_largeTree1 = makeDcon4 ContLargeT1
dcon_LCall_largeTree0 = makeDcon3 ContLargeT0


dcon_TupGo__Pointer_List__Pointer_CTmap1              = makeDcon3
  (Tup3 :: Go -> (Pointer List) -> (Pointer CTmap1) ->
  Tup3  Go  (Pointer List)  (Pointer CTmap1)) 
dcon_TupGo__Int_32__Int_32                            = makeDcon3
  (Tup3 :: Go -> Int -> Int ->
  Tup3  Go  Int  Int)
dcon_TupPointer_CTmerge__Pointer_List                 = makeDcon2
  (Tup2 :: (Pointer CTmerge) -> (Pointer List) ->
   Tup2  (Pointer CTmerge)  (Pointer List))
dcon_TupPointer_ContList__Pointer_List                = makeDcon2
  (Tup2 :: (Pointer ContList) -> (Pointer List) ->
   Tup2  (Pointer ContList)  (Pointer List))
dcon_TupPointer_CTmerge__Pointer_List__Pointer_List   = makeDcon3
  (Tup3 :: (Pointer CTmerge) -> (Pointer List) -> (Pointer List) ->
   Tup3  (Pointer CTmerge)  (Pointer List) (Pointer List)  )
dcon_TupPointer_List__Go__Pointer_CTmergeSort         = makeDcon3
  (Tup3 :: (Pointer List) -> Go -> (Pointer CTmergeSort) ->
   Tup3  (Pointer List)  Go (Pointer CTmergeSort)  )
dcon_TupPointer_CTmergeSort__Go__Pointer_List         = makeDcon3
  (Tup3 :: (Pointer CTmergeSort) -> Go -> (Pointer List) ->
   Tup3  (Pointer CTmergeSort)  Go (Pointer List)  )
dcon_TupPointer_Tree__Go__Pointer_CTlargeTree         = makeDcon3
  (Tup3 :: (Pointer Tree) -> Go -> (Pointer CTlargeTree) ->
   Tup3  (Pointer Tree)  Go (Pointer CTlargeTree)  )
dcon_TupPointer_CTdfs__Go__Pointer_Tree               = makeDcon3
  (Tup3 :: (Pointer CTdfs) -> Go -> (Pointer Tree) ->
   Tup3  (Pointer CTdfs)  Go (Pointer Tree)  )
dcon_TupPointer_List__Go__Pointer_CTdfs               = makeDcon3
  (Tup3 :: (Pointer List) -> Go -> (Pointer CTdfs) ->
   Tup3  (Pointer List)  Go (Pointer CTdfs)  )
dcon_TupPointer_CTfilter1__Pointer_List__Pointer_List = makeDcon3
  (Tup3 :: (Pointer CTfilter1) -> (Pointer List) -> (Pointer List) ->
   Tup3  (Pointer CTfilter1)  (Pointer List)  (Pointer List))
dcon_TupPointer_CTfilter1__Pointer_List__Go           = makeDcon3
  (Tup3 :: (Pointer CTfilter1) -> (Pointer List) -> Go ->
   Tup3  (Pointer CTfilter1)  (Pointer List)  Go)
dcon_TupPointer_CTfilter1__Pointer_List               = makeDcon2
  (Tup2 :: (Pointer CTfilter1) -> (Pointer List) ->
   Tup2  (Pointer CTfilter1)  (Pointer List))
dcon_TupPointer_CTtreeMap__Pointer_Tree               = makeDcon2
  (Tup2 :: (Pointer CTtreeMap) -> (Pointer Tree) ->
   Tup2  (Pointer CTtreeMap)  (Pointer Tree))

dcon_TupGo__Int_32__Int_32__Pointer_CTlargeTree       = makeDcon4
  (Tup4 :: Go -> Int -> Int -> (Pointer CTlargeTree) ->
   Tup4 Go  Int  Int  (Pointer CTlargeTree))
dcon_TupPointer_CTmap1__Pointer_List__Go              = makeDcon3
  (Tup3 :: (Pointer CTmap1) -> (Pointer List) -> Go ->
   Tup3  (Pointer CTmap1)  (Pointer List)  Go)
dcon_TupGo__Pointer_Tree__Pointer_CTdfs               = makeDcon3
  (Tup3 :: Go -> (Pointer Tree) -> (Pointer CTdfs) ->
   Tup3 Go (Pointer Tree) (Pointer CTdfs))
dcon_TupGo__Pointer_List__Pointer_CTdfs               = makeDcon3 
  (Tup3 :: Go -> (Pointer List) -> (Pointer CTdfs) ->
   Tup3 Go (Pointer List) (Pointer CTdfs))
dcon_TupPointer_List__Go                              = makeDcon2 
  (Tup2 :: Pointer List -> Go -> Tup2 (Pointer List) Go)
dcon_TupPointer_List__Pointer_CTfilter1               = makeDcon2 
  (Tup2 :: Pointer List -> Pointer CTfilter1 ->
   Tup2 (Pointer List) (Pointer CTfilter1))
dcon_TupInt_32__Int_32__Pointer_List__Go              = makeDcon4 
  (Tup4 :: Int -> Int -> Pointer List -> Go ->
   Tup4 Int Int (Pointer List) Go)
dcon_TupPointer_List__Pointer_List__Pointer_CTfilter1 = makeDcon3 
  (Tup3 :: Pointer List -> Pointer List -> Pointer CTfilter1 ->
   Tup3 (Pointer List) (Pointer List) (Pointer CTfilter1))
dcon_TupPointer_List__Pointer_List__Go                = makeDcon3 
  (Tup3 :: Pointer List -> Pointer List -> Go -> 
   Tup3 (Pointer List) (Pointer List) Go)
dcon_TupPointer_List__Pointer_ContList                = makeDcon2
  (Tup2 :: Pointer List -> Pointer List -> 
   Tup2 (Pointer List) (Pointer List))
dcon_TupPointer_List__Pointer_CTfilter1__Go           = makeDcon3
  (Tup3 :: Pointer List -> Pointer CTfilter1 -> Go ->
   Tup3 (Pointer List) (Pointer CTfilter1) Go)
dcon_TupPointer_List__Pointer_CTmap1__Go              = makeDcon3
  (Tup3 :: Pointer List->Pointer CTmap1->Go ->
   Tup3 (Pointer List) (Pointer CTmap1) Go) 
dcon_TupList__Pointer_CTmap1__Go                      = makeDcon3
  (Tup3 :: List -> Pointer CTmap1 -> Go ->
   Tup3 List (Pointer CTmap1) Go)
dcon_TupInt_32__Go                                    = makeDcon2
  (Tup2 :: Int -> Go -> Tup2 Int Go)
dcon_TupGo__Int_32__Int_32__Pointer_CTbuildTree       = makeDcon4
  (Tup4 :: Go -> Int -> Int -> (Pointer CTbuildTree) ->
   Tup4 Go Int Int (Pointer CTbuildTree))
dcon_TupPointer_Tree__Pointer_CTbuildTree             = makeDcon2
  (Tup2 :: (Pointer Tree) -> (Pointer CTbuildTree) -> 
   Tup2  (Pointer Tree)  (Pointer CTbuildTree))
dcon_TupGo__Pointer_Tree__Pointer_CTtreeMap           = makeDcon3
  (Tup3 :: Go -> (Pointer Tree) -> (Pointer CTtreeMap) ->
   Tup3  Go  (Pointer Tree)  (Pointer CTtreeMap))
dcon_TupPointer_Tree__Pointer_CTtreeMap               = makeDcon2
  (Tup2 :: (Pointer Tree) -> (Pointer CTtreeMap) ->
   Tup2  (Pointer Tree)  (Pointer CTtreeMap))
dcon_TupGo__Int_32                                    = makeDcon2
  (Tup2 :: Go -> Int -> Tup2 Go Int)
dcon_TupPointer_List__Pointer_List__Pointer_CTmerge   = makeDcon3
  (Tup3 :: (Pointer List) -> (Pointer List) -> (Pointer CTmerge) ->
   Tup3 (Pointer List)  (Pointer List)  (Pointer CTmerge))
dcon_TupPointer_List__Pointer_CTmerge                 = makeDcon2
  (Tup2 :: (Pointer List) -> (Pointer CTmerge) ->
   Tup2 (Pointer List)  (Pointer CTmerge))
dcon_TupGo__Pointer_List__Pointer_CTmergeSort         = makeDcon3
  (Tup3 :: Go -> (Pointer List) -> (Pointer CTmergeSort) ->
   Tup3  Go  (Pointer List)  (Pointer CTmergeSort))
dcon_TupGo__Pointer_Tree__Pointer_CTlargeTree         = makeDcon3
  (Tup3 :: Go -> (Pointer Tree) -> (Pointer CTlargeTree) ->
   Tup3 Go  (Pointer Tree)  (Pointer CTlargeTree))
dcon_TupInt_32__Int_32__Go__Pointer_CTlargeTree       = makeDcon4
  (Tup4 :: Int -> Int -> Go -> (Pointer CTlargeTree) ->
   Tup4  Int  Int  Go  (Pointer CTlargeTree))

-- | A data constructor with 2 fields
makeDcon2 dcon in1 in2 stop = (pure dcon <*> in1 <*> in2,stopO,stopO)
  where
    stopO = stop || isNothing in1 || isNothing in2

makeDcon3 dcon in1 in2 in3 stop = (pure dcon <*> in1 <*> in2 <*> in3
                                  ,stopO,stopO,stopO)
  where
    stopO = stop || isNothing in1 || isNothing in2 || isNothing in3

makeDcon4 dcon in1 in2 in3 in4 stop = (pure dcon <*> in1 <*> in2 <*> in3 <*> in4
                                      ,stopO,stopO,stopO,stopO)
  where
    noths = [isNothing in1,isNothing in2,isNothing in3,isNothing in4]
    stopO = stop || or noths

{---------------------
  Constants
---------------------}

-- | Generate the a constant 
iconst :: Int -> Maybe Go -> Bool -> (Maybe Int,Bool)
iconst num input stop = (dOut,stop)
  where
    dOut = fmap (const num) input

iconst500 = iconst 500
iconst400 = iconst 400
iconst300 = iconst 300
iconst200 = iconst 200
iconst110 = iconst 110
iconst100 = iconst 100
iconst95  = iconst 95
iconst90  = iconst 90
iconst80  = iconst 80
iconst70  = iconst 70
iconst60  = iconst 60
iconst50  = iconst 50
iconst40  = iconst 40
iconst30  = iconst 30
iconst20  = iconst 20
iconst16  = iconst 16
iconst14  = iconst 14
iconst13  = iconst 13
iconst12  = iconst 12
iconst11  = iconst 11
iconst10  = iconst 10
iconst9   = iconst 9
iconst8   = iconst 8 
iconst7   = iconst 7 
iconst6   = iconst 6 
iconst5   = iconst 5 
iconst4   = iconst 4 
iconst3   = iconst 3 
iconst2   = iconst 2 
iconst1   = iconst 1 
iconst0   = iconst 0 

dconstEmpList        = genDconst EmpNil
dconstList           = genDconst Nil
dconstListbos        = dconstList
dconstLeaf           = genDconst Leaf
dconstLdfssbos       = genDconst CTdfsBoS
dconstMyFalse        = genDconst False
dconstMyTrue         = genDconst True
dconstBoS            = dconstLmap1sbos 
dconstLmap1sbos      = genDconst Cont0
dconstLbuildTreesbos = genDconst ContBuildTBoS
dconstLtreeMapsbos   = genDconst ContMapTBoS
dconstLmergesbos     = genDconst CTmergebos
dconstLmergeSortsbos = genDconst CTmergeSortbos
dconstLlargeTreesbos = genDconst ContLargeTBoS

genDconst :: a -> Maybe Go -> Bool -> (Maybe a,Bool)
genDconst dcon input stop = (fmap (const dcon) input,stop)

{---------------------
  Forks
---------------------}

-- | 2-way Fork node
fork2 :: Maybe a -> Bool -> Bool -> Maybe [Bool] -> (Maybe a, Maybe a, Bool,Maybe [Bool])
fork2 input s1 s2 st = (o1,o2,stop,nextState)
  where
   (outs,stop,nextState) = generalFork input [s1,s2] st 
   [o1,o2] = outs

-- | 3-way Fork node
fork3 :: Maybe a -> Bool -> Bool -> Bool -> Maybe [Bool]
      -> (Maybe a, Maybe a, Maybe a, Bool,Maybe [Bool]) 
fork3 input s1 s2 s3 st = (o1,o2,o3,stop,nextState)
  where
   (outs,stop,nextState) = generalFork input [s1,s2,s3] st 
   [o1,o2,o3] = outs

fork4 input s1 s2 s3 s4 st = (o1,o2,o3,o4,stop,nextState)
  where
   (outs,stop,nextState) = generalFork input [s1,s2,s3,s4] st 
   [o1,o2,o3,o4] = outs

fork5 input s1 s2 s3 s4 s5 st = (o1,o2,o3,o4,o5,stop,nextState)
  where
   (outs,stop,nextState) = generalFork input [s1,s2,s3,s4,s5] st 
   [o1,o2,o3,o4,o5] = outs

fork6 input s1 s2 s3 s4 s5 s6 st = (o1,o2,o3,o4,o5,o6,stop,nextState)
  where
   (outs,stop,nextState) = generalFork input [s1,s2,s3,s4,s5,s6] st 
   [o1,o2,o3,o4,o5,o6] = outs
    
fork7 input s1 s2 s3 s4 s5 s6 s7 st = (o1,o2,o3,o4,o5,o6,o7,stop,nextState)
  where
   (outs,stop,nextState) = generalFork input stops st 
   stops = [s1,s2,s3,s4,s5,s6,s7]
   [o1,o2,o3,o4,o5,o6,o7] = outs

fork8 input s1 s2 s3 s4 s5 s6 s7 s8 st = 
  (o1,o2,o3,o4,o5,o6,o7,o8,stop,nextState)
  where
   (outs,stop,nextState) = generalFork input stops st 
   stops = [s1,s2,s3,s4,s5,s6,s7,s8]
   [o1,o2,o3,o4,o5,o6,o7,o8] = outs

fork10 input s1 s2 s3 s4 s5 s6 s7 s8 s9 s10 st = 
  (o1,o2,o3,o4,o5,o6,o7,o8,o9,o10,stop,nextState)
  where
   (outs,stop,nextState) = generalFork input stops st 
   stops = [s1,s2,s3,s4,s5,s6,s7,s8,s9,s10]
   [o1,o2,o3,o4,o5,o6,o7,o8,o9,o10] = outs

fork11 input s1 s2 s3 s4 s5 s6 s7 s8 s9 s10 s11 st = 
  (o1,o2,o3,o4,o5,o6,o7,o8,o9,o10,o11,stop,nextState)
  where
   (outs,stop,nextState) = generalFork input stops st 
   stops = [s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11]
   [o1,o2,o3,o4,o5,o6,o7,o8,o9,o10,o11] = outs

-- n-way fork
generalFork :: Maybe a -> [Bool] -> Maybe [Bool]
            -> ([Maybe a],Bool,Maybe [Bool])
generalFork input stops st = (outputs,stopOut,nextState)
  where
    numOuts = length stops
    outputs = map makeOut [0..(numOuts - 1)]
    stopOut = isNothing input || (if isNothing st
              then or stops
              else or (zipWith (&&) stops (map not bits)))

    bits = fromMaybe (replicate numOuts False) st

    makeOut index | index > numOuts - 1 = error "GeneralFork"
                  | not (bits !! index) = input
                  | otherwise = Nothing

    nextState = let bits' = zipWith (||) bits $ map ((&& isJust input) . not) stops
                in if isNothing st || and bits'
                      then Just $ replicate numOuts False
                      else Just bits'

{---------------------
 Function Multiplexers
---------------------}

mux_C1 :: Maybe Choice -> Maybe a 
       -> Bool
       -> (Maybe a, Bool, Bool)
mux_C1 choice in1 stop = (dOut,stopChoice,s1)
  where
    (dOut,stopChoice,stops) = funcMux choice [in1] stop
    [s1] = stops

mux_C1C2 :: Maybe Choice -> Maybe a -> Maybe a
         -> Bool
         -> (Maybe a, Bool, Bool, Bool)
mux_C1C2 choice in1 in2 stop = (dOut,stopChoice,s1,s2)
  where
    (dOut,stopChoice,stops) = funcMux choice [in1,in2] stop
    [s1,s2] = stops

mux_C1C2C3 :: Maybe Choice -> Maybe a -> Maybe a -> Maybe a
           -> Bool
           -> (Maybe a, Bool, Bool, Bool, Bool)
mux_C1C2C3 choice in1 in2 in3 stop = (dOut,stopChoice,s1,s2,s3)
  where
    (dOut,stopChoice,stops) = funcMux choice [in1,in2,in3] stop
    [s1,s2,s3] = stops

mux_C1C2C3C4 choice in1 in2 in3 in4 stop = (dOut,stopChoice,s1,s2,s3,s4)
  where
    (dOut,stopChoice,stops) = funcMux choice [in1,in2,in3,in4] stop
    [s1,s2,s3,s4] = stops

mux_C1C2C3C4C5 :: Maybe Choice -> Maybe a -> Maybe a -> Maybe a -> Maybe a -> Maybe a
           -> Bool
           -> (Maybe a, Bool, Bool, Bool, Bool,Bool,Bool)
mux_C1C2C3C4C5 choice in1 in2 in3 in4 in5 stop = (dOut,stopChoice,s1,s2,s3,s4,s5)
  where
    (dOut,stopChoice,stops) = funcMux choice [in1,in2,in3,in4,in5] stop
    [s1,s2,s3,s4,s5] = stops


-- | General mux for selecting an argument of a function call with n call sites
funcMux :: Maybe Choice -> [Maybe a] -> Bool -> (Maybe a,Bool,[Bool])
funcMux select vals stop = (dOut,selStop,valStops)
  where
    dOut = if isJust select 
            then vals !! fromJust valIndex
            else Nothing
    valIndex = fmap getValIndex select


    valStops | stop = replicate (length vals) True
             | isNothing select = replicate (length vals) True
             | otherwise = replicate (fromJust valIndex) True ++
                           [isNothing (vals !! fromJust valIndex)] ++
                           replicate (length vals - fromJust valIndex - 1) True

    selStop = stop || isNothing select || isJust select && isNothing (vals !! fromJust valIndex)

    getValIndex C1 = 0
    getValIndex C2 = 1
    getValIndex C3 = 2
    getValIndex C4 = 3
    getValIndex C5 = 4
    getValIndex C6 = 5


{---------------------
 Case Multiplexers
---------------------}

-- | Only pass value through if choice is List.
-- All other single choice muxes are implemented with with
-- this function as a black box.
mux_general :: (Data b,Eq b) => b -> Maybe b -> Maybe a -> Bool
         -> (Maybe a, Bool, Bool)
mux_general dcon choice listChoice stop = (dOut,stopChoice,stopList)
  where
    (dOut,_,stopList,_) = mux_ListCons newSel listChoice Nothing stop
    stopChoice = isNothing choice 
               || muxStopChoice listChoice newSel 
               || isJust dOut && stop

    muxStopChoice Nothing (Just Nil) = True
    muxStopChoice _       _          = False

    newSel = changeSel choice
    changeSel (Just dc) = if toConstr dc == toConstr dcon 
                            then Just Nil 
                            else Nothing
    changeSel _         = Nothing

mux_List = mux_general Nil 
mux_Leaf = mux_general Leaf
mux_LtreeMapsbos = mux_general ContMapTBoS 
mux_LbuildTreesbos = mux_general ContBuildTBoS 
mux_True= mux_general True 
mux_False = mux_general False 
mux_BoS = mux_Lmap1sbos
mux_Lmap1sbos = mux_general Cont0 
mux_Ldfssbos = mux_general CTdfsBoS
mux_Listbos  = mux_List
mux_Lmergesbos = mux_general CTmergebos
mux_LmergeSortsbos = mux_general CTmergeSortbos
mux_TupPointer_List__Go = mux_general (Tup2 (Pointer Nil) Go)
mux_TupPointer_List__Pointer_List__Go = mux_general (Tup3 (Pointer Nil) (Pointer Nil) Go)
mux_TupInt_32__Int_32__Pointer_List__Go = mux_general (Tup4 (0::Int) (0::Int) (Pointer Nil) Go)
mux_TupPointer_List__Pointer_CTfilter1 = mux_general (Tup2 (Pointer Nil) (Pointer Cont0))
mux_TupPointer_List__Pointer_List__Pointer_CTfilter1 = 
  mux_general (Tup3 (Pointer Nil) (Pointer Nil) (Pointer Cont0))
mux_TupPointer_List__Pointer_ContList = mux_general (Tup2 (Pointer Nil) (Pointer Nil))

mux2 :: Data a => [a] -> Maybe a -> Maybe b -> Maybe b -> Bool
       -> (Maybe b,Bool,Bool,Bool)
mux2 [dc1,dc2] choice v1 v2 stop = (dOut,choiceStop,s1,s2)
  where
    (dOut,choiceStop,valStops) = funcMux newChoice [v1,v2] stop
    [s1,s2] = valStops
    newChoice = changeChoice choice
    changeChoice Nothing = Nothing
    changeChoice (Just dcon) | toConstr dcon == toConstr dc1 = Just C1
                             | toConstr dcon == toConstr dc2 = Just C2
                             | otherwise = Nothing

mux_EmpListEmpCons = mux2 [EmpNil,EmpCons (Pointer EmpNil)]
mux_ConsList = mux2 [Cons 1 (Pointer Nil),Nil]
mux_ListCons = mux2 [Nil,Cons 1 (Pointer Nil)]
mux_MyTrueMyFalse = mux2 [True,False]
mux_MyFalseMyTrue = mux_FalseTrue
mux_FalseTrue = mux2 [False,True]
mux_Lmap1sbosLCall_map10 = mux2 [Cont0,Cont1 1 (Pointer Cont0)]
mux_LeafBranch = mux2 [Leaf,Branch (Pointer Leaf) 0 (Pointer Leaf)]

mux3 :: Data a => [a] -> Maybe a -> Maybe b -> Maybe b -> Maybe b -> Bool
       -> (Maybe b,Bool,Bool,Bool,Bool)
mux3 [dc1,dc2,dc3] choice v1 v2 v3 stop = (dOut,choiceStop,s1,s2,s3)
  where
    (dOut,choiceStop,valStops) = funcMux newChoice [v1,v2,v3] stop
    [s1,s2,s3] = valStops
    newChoice = changeChoice choice
    changeChoice Nothing = Nothing
    changeChoice (Just dcon) | toConstr dcon == toConstr dc1 = Just C1
                             | toConstr dcon == toConstr dc2 = Just C2
                             | toConstr dcon == toConstr dc3 = Just C3
                             | otherwise = Nothing


mux_LmergeSortsbosLCall_mergeSort1LCall_mergeSort0 = 
  mux3 [CTmergeSortbos
       ,CTmergeSort1 (Pointer Nil) (Pointer CTmergeSortbos)
       ,CTmergeSort0 (Pointer Nil) (Pointer CTmergeSortbos)]
mux_LbuildTreesbosLCall_buildTree1LCall_buildTree0 = 
  mux3  [ContBuildTBoS
        ,ContBuildT1 0 Go 0 (Pointer ContBuildTBoS)
        ,ContBuildT0 0 (Pointer Leaf) (Pointer ContBuildTBoS)]
mux_LtreeMapsbosLCall_treeMap1LCall_treeMap0 =
  mux3 [ContMapTBoS
       ,ContMapT1 (Pointer Leaf) Go 0 (Pointer ContMapTBoS)
       ,ContMapT0 0 (Pointer Leaf) (Pointer ContMapTBoS)]
mux_LdfssbosLCall_dfs2LCall_dfs1 =
  mux3 [CTdfsBoS
       ,CTdfsT2 0 (Pointer Leaf) (Pointer CTdfsBoS)
       ,CTdfsT1 (Pointer Nil) (Pointer CTdfsBoS) 0]
{---------------------
  Demultiplexers
---------------------}

demux_C1 val choice s1 = (o1,valStop,choiceStop)
  where
    o1 = getData val choice
    getData (Just _) (Just C1) = val

    valStop = isNothing val || getStop1 choice
    choiceStop = isNothing choice || getStop2 val choice

    getStop1 (Just C1)  = s1
    getStop1 (Just _ )  = False
    getStop1 Nothing    = True

    getStop2 Nothing  _         = True
    getStop2 (Just _) (Just C1) = s1
    getStop2 _        _         = False


demux_C1C2 :: Maybe a -> Maybe Choice ->
              Bool -> Bool ->
              (Maybe a, Maybe a, Bool,Bool)
demux_C1C2 val choice s1 s2 = (o1,o2,valStop,selStop)
  where
    (outs,valStop,selStop) = funcDemux val (new choice) [s1,s2]
    new (Just C1) = choice
    new (Just C2) = choice
    new _         = Nothing

    [o1,o2] = outs
    

demux_C1C2C3 val choice s1 s2 s3 = (o1,o2,o3,valStop,selStop)
  where
    (outs,valStop,selStop) = funcDemux val (new choice) [s1,s2,s3]
    new (Just C1) = choice
    new (Just C2) = choice
    new (Just C3) = choice
    new _         = Nothing
    [o1,o2,o3] = outs

demux_C1C2C3C4C5C6 :: Maybe a -> Maybe Choice -> 
                      Bool -> Bool -> Bool -> Bool -> Bool -> Bool ->
                      (Maybe a, Maybe a, Maybe a, Maybe a, Maybe a, Maybe a,
                       Bool,Bool)
demux_C1C2C3C4C5C6 val choice s1 s2 s3 s4 s5 s6 = 
  (o1,o2,o3,o4,o5,o6,valStop,selStop)
  where
    (outs,valStop,selStop) = funcDemux val choice [s1,s2,s3,s4,s5,s6]
    [o1,o2,o3,o4,o5,o6] = outs

-- | General demux for routing the result of a fucntion call with n call sites
funcDemux :: Maybe a -> Maybe Choice -> [Bool] -> ([Maybe a],Bool,Bool)
funcDemux val select stops = (outs,valStop,selStop)
  where
    outs = if isJust val && isJust select
            then replicate (fromJust stopIndex) Nothing ++
                 [val] ++
                 replicate (length stops - fromJust stopIndex - 1) Nothing
            else replicate (length stops) Nothing

    selStop = isNothing select || valStop
    valStop = isNothing val || genValStop stopIndex
    stopIndex = fmap getStopIndex select

    genValStop Nothing = True
    genValStop (Just index) = stops !! index

    getStopIndex C1 = 0
    getStopIndex C2 = 1
    getStopIndex C3 = 2
    getStopIndex C4 = 3
    getStopIndex C5 = 4
    getStopIndex C6 = 5

demux_LCall_buildTree0 val choice s1 = (o1,valStop,selStop)
  where
    (outs,valStop,selStop) = funcDemux val newChoice [s1]
    [o1] = outs
    newChoice = changeChoice  choice
    changeChoice (Just (ContBuildT0 _ _ _)) = Just C1
    changeChoice _ = Nothing


demux4 :: Data a => [a] -> Maybe b -> Maybe a -> Bool -> Bool -> Bool -> Bool
       -> (Maybe b,Maybe b,Maybe b,Maybe b,Bool,Bool)
demux4 [dc1,dc2,dc3,dc4] val choice s1 s2 s3 s4 = (o1,o2,o3,o4,valStop,selStop)
  where
    (outs,valStop,selStop) = funcDemux val newChoice [s1,s2,s3,s4]
    [o1,o2,o3,o4] = outs
    newChoice = changeChoice choice
    changeChoice Nothing = Nothing
    changeChoice (Just dcon) 
      | toConstr dcon == toConstr dc1 = Just C1
      | toConstr dcon == toConstr dc2 = Just C2
      | toConstr dcon == toConstr dc3 = Just C3
      | toConstr dcon == toConstr dc4 = Just C4
      | otherwise = Nothing

demux_LlargeTreesbosLCall_largeTree2LCall_largeTree1LCall_largeTree0 = 
  let bos = ContLargeTBoS
  in demux4 [bos
            ,ContLargeT2 0 0 Go (Pointer bos)
            ,ContLargeT1 Go 0 0 (Pointer bos)
            ,ContLargeT0 0 (Pointer Leaf) (Pointer bos)]

demux3 :: Data a => [a] -> Maybe b -> Maybe a -> Bool -> Bool -> Bool
       -> (Maybe b,Maybe b,Maybe b,Bool,Bool)
demux3 [dc1,dc2,dc3] val choice s1 s2 s3 = (o1,o2,o3,valStop,selStop)
  where
    (outs,valStop,selStop) = funcDemux val newChoice [s1,s2,s3]
    [o1,o2,o3] = outs
    newChoice = changeChoice choice
    changeChoice Nothing = Nothing
    changeChoice (Just dcon) 
      | toConstr dcon == toConstr dc1 = Just C1
      | toConstr dcon == toConstr dc2 = Just C2
      | toConstr dcon == toConstr dc3 = Just C3
      | otherwise = Nothing

demux_LmergeSortsbosLCall_mergeSort1LCall_mergeSort0 =
  let bos = CTmergeSortbos
  in demux3 [bos
            ,CTmergeSort1 (Pointer Nil) (Pointer bos)
            ,CTmergeSort0 (Pointer Nil) (Pointer bos)]
demux_LmergesbosLCall_merge1LCall_merge0 = 
  let bos = CTmergebos
  in demux3 [bos
            ,CTmerge1 0 (Pointer bos)
            ,CTmerge0 0 (Pointer bos)]
demux_LbuildTreesbosLCall_buildTree1LCall_buildTree0 =
  let bos = ContBuildTBoS
  in demux3 [bos
            ,ContBuildT1 0 Go 0 (Pointer bos)
            ,ContBuildT0 0 (Pointer Leaf) (Pointer bos)]

demux_LdfssbosLCall_dfs2LCall_dfs1 = 
  let bos = CTdfsBoS
  in demux3 [bos
            ,CTdfsT2 0 (Pointer Leaf) (Pointer bos)
            ,CTdfsT1 (Pointer Nil) (Pointer bos) 0]
demux_LtreeMapsbosLCall_treeMap1LCall_treeMap0=
  let bos = ContMapTBoS
  in demux3 [bos
            ,ContMapT1 (Pointer Leaf) Go 0 (Pointer bos)
            ,ContMapT0 0 (Pointer Leaf) (Pointer bos)]
demux_LCall_largeTree2LCall_largeTree1LCall_largeTree0 =
  let bos = Pointer ContLargeTBoS
  in demux3 [ContLargeT2 0 0 Go bos
            ,ContLargeT1 Go 0 0 bos
            ,ContLargeT0 0 (Pointer Leaf) bos]

demux2 :: Data a => [a] -> Maybe b -> Maybe a -> Bool -> Bool
       -> (Maybe b,Maybe b,Bool,Bool)
demux2 [dc1,dc2] val choice s1 s2 = (o1,o2,valStop,selStop)
  where
    (outs,valStop,selStop) = funcDemux val newChoice [s1,s2]
    [o1,o2] = outs
    newChoice = changeChoice choice
    changeChoice Nothing = Nothing
    changeChoice (Just dcon) | toConstr dcon == toConstr dc1 = Just C1
                             | toConstr dcon == toConstr dc2 = Just C2
                             | otherwise = Nothing

demux_EmpListEmpCons = demux2 [EmpNil,EmpCons (Pointer EmpNil)]
demux_C1C3 = demux2 [C1,C3]
demux_LeafBranch = demux2 [Leaf,Branch (Pointer Leaf) 1 (Pointer Leaf)]
demux_MyTrueMyFalse = demux2 [True,False]
demux_TrueFalse = demux2 [True,False]
demux_FalseTrue = demux2 [False,True]
demux_MyFalseMyTrue = demux_FalseTrue
demux_ConsList  = demux2 [Cons 1 (Pointer Nil),Nil]
demux_ListCons  = demux2 [Nil,Cons 1 (Pointer Nil)]
demux_ListbosListC1 = demux_ListCons
demux_BoSCont = demux2 [Cont0,Cont1 1 (Pointer Cont0)]
demux_Lmap1sbosLCall_map10 = demux_BoSCont
demux_LCall_dfs2LCall_dfs1 = demux2 [dfs2,dfs1]
  where
    bos = CTdfsBoS
    dfs2 = CTdfsT2 0 (Pointer Leaf) (Pointer bos)
    dfs1 = CTdfsT1 (Pointer Nil) (Pointer bos) 0
demux_LCall_mergeSort1LCall_mergeSort0 = let pbos = Pointer CTmergeSortbos
                                             nil = Pointer Nil
                                             cont1 = CTmergeSort1 nil pbos
                                             cont0 = CTmergeSort0 nil pbos
                                         in demux2 [cont1,cont0]

demux_Leaf  val choice s1 = (out1,valStop,choiceStop)
  where
    (out1,_,valStop,choiceStop) = demux_LeafBranch val choice s1 False
demux_Branch  val choice s1 = (out1,valStop,choiceStop)
  where
    (_,out1,valStop,choiceStop) = demux_LeafBranch val choice False s1

demux_False val choice s1 = (out1,valStop,choiceStop)
  where
    (out1,_,valStop,choiceStop) = demux_FalseTrue val choice s1 False
    
demux_True val choice s1 = (out1,valStop,choiceStop)
  where
    (_,out1,valStop,choiceStop) = demux_FalseTrue val choice False s1


demux_MyFalse val choice s1 = (out1,valStop,choiceStop)
  where
    (out1,valStop,choiceStop) = demux_False val choice s1 

demux_MyTrue val choice s1 = (out1,valStop,choiceStop)
  where
    (out1,_,valStop,choiceStop) = demux_MyTrueMyFalse val choice s1 False


demux_I_ :: Maybe a -> Maybe Int  -> Bool -> (Maybe a, Bool, Bool)
demux_I_ val choice stop = (dOut,stopO,stopO)
  where
    dOut = if isJust choice then val else Nothing
    stopO = stop || isNothing choice || isNothing val

demux_List val choice s1 = (listOut,valStop,choiceStop)
  where
    (listOut,_,valStop,choiceStop) = demux_ListCons val choice s1 False

demux_Cons val choice s1 = (consOut,valStop,choiceStop)
  where
    (_,consOut,valStop,choiceStop) = demux_ListCons val choice False s1

demux_LCall_map10 val choice s1 = (c1Out,valStop,choiceStop)
  where
    (_,c1Out,valStop,choiceStop) = demux_Lmap1sbosLCall_map10 val choice False s1

{---------------------
  CallLock 
---------------------}

callLock_1 unlock in1 sIn1 st = (out1,stop1,stop2,nextState)
  where
   out1 = makeOut 0 in1

   ([stop1,stop2],nextState,bits) = 
    lockStopsAndState [isJust in1]
                      unlock
                      [sIn1]
                      st


   makeOut index v = if not (bits !! index)
                     then v else Nothing
    
-- | Call lock node for a 2 argument recursive function
callLock_2 :: Maybe c      ->        --Unlock token
              Maybe a -> Maybe b ->  --2 inputs
              Bool -> Bool ->        --Stops from function body
              Maybe [Bool] ->        --State bits for inputs
              (Maybe a,Maybe b       --Inputs to function body
              ,Bool,Bool             --Stop signals for inputs
              ,Bool                  --Stop signal for unlock
              ,Maybe [Bool])         --Next state
callLock_2 unlock in1 in2 sIn1 sIn2 st = (out1,out2,stop1,stop2,stop3,nextState)
  where
   out1 = makeOut 0 in1
   out2 = makeOut 1 in2

   ([stop1,stop2,stop3],nextState,bits) = 
    lockStopsAndState [isJust in1,isJust in2]
                      unlock
                      [sIn1,sIn2]
                      st


   makeOut index v = if not (bits !! index)
                     then v else Nothing

-- | Call lock node for a 3 argument recursive function
callLock_3 :: Maybe d                       ->         
              Maybe a -> Maybe b -> Maybe c ->
              Bool -> Bool -> Bool          ->
              Maybe [Bool]                  ->        
              (Maybe a,Maybe b,Maybe c
              ,Bool,Bool,Bool        
              ,Bool                  
              ,Maybe [Bool])         
callLock_3 unlock in1 in2 in3 sIn1 sIn2 sIn3 st = 
  (out1,out2,out3,s1,s2,s3,s4,nextState)
  where
   out1 = makeOut 0 in1
   out2 = makeOut 1 in2
   out3 = makeOut 2 in3

   ([s1,s2,s3,s4],nextState,bits) = 
    lockStopsAndState [isJust in1,isJust in2,isJust in3]
                      unlock
                      [sIn1,sIn2,sIn3]
                      st

   makeOut index v = if not (bits !! index)
                     then v else Nothing

callLock_4 unlock in1 in2 in3 in4 sIn1 sIn2 sIn3 sIn4 st = 
  (out1,out2,out3,out4,s1,s2,s3,s4,s5,nextState)
  where
   out1 = makeOut 0 in1
   out2 = makeOut 1 in2
   out3 = makeOut 2 in3
   out4 = makeOut 3 in4

   ([s1,s2,s3,s4,s5],nextState,bits) = 
    lockStopsAndState [isJust in1,isJust in2,isJust in3,isJust in4]
                      unlock
                      [sIn1,sIn2,sIn3,sIn4]
                      st

   makeOut index v = if not (bits !! index)
                     then v else Nothing

callLock_5 :: Maybe f ->
              Maybe a -> Maybe b -> Maybe c -> Maybe d  -> Maybe e
              -> Bool -> Bool -> Bool -> Bool -> Bool   ->
              Maybe [Bool]                  ->        
              (Maybe a,Maybe b,Maybe c,Maybe d,Maybe e
              ,Bool,Bool,Bool,Bool,Bool        
              ,Bool                  
              ,Maybe [Bool])         
callLock_5 unlock in1 in2 in3 in4 in5 sIn1 sIn2 sIn3 sIn4 sIn5 st = 
  (out1,out2,out3,out4,out5,s1,s2,s3,s4,s5,s6,nextState)
  where
   out1 = makeOut 0 in1
   out2 = makeOut 1 in2
   out3 = makeOut 2 in3
   out4 = makeOut 3 in4
   out5 = makeOut 4 in5

   ([s1,s2,s3,s4,s5,s6],nextState,bits) = 
    lockStopsAndState [isJust in1,isJust in2,isJust in3,isJust in4,isJust in5]
                      unlock
                      [sIn1,sIn2,sIn3,sIn4,sIn5]
                      st

   makeOut index v = if not (bits !! index)
                     then v else Nothing

-- | Compute stops and next state for an aribtrary callLock node
lockStopsAndState inJusts unlock stops st = (outStops,nextState,bits)
  where
   bits = fromMaybe falseSet st
   outStops = zipWith (||) (map not inJusts) (zipWith (||) bits stops) ++ [not unlocked || (not $ and bits)]
   falseSet = replicate (length stops) False

   unlocked = isJust unlock

   nextState = if (unlocked && and bits) || isNothing st
                  then Just falseSet --open all channels if unlocked
                  else Just $ zipWith (||) bits $
                              zipWith (&&) inJusts (map not stops)


{---------------------
  Cases 
---------------------}

-- | This should be modeling the unwrapping of an Int into an I# constructor,
-- and an Int# but ghc won't let us express the type "Maybe Int#" 
-- (Maybe expects an unlifted type). Thus, I'm pretending
-- that Int#s are just Ints; this case is essentially a duplicator (the input
-- becomes both the data output and the choice output
case_I_0 :: Maybe Int -> Bool -> Bool -> Maybe [Bool]
         -> (Maybe Int, Maybe Int, Bool, Maybe [Bool])
case_I_0 num choiceStop valStop st = (choice,val,isNothing num || stop,nextState)
  where
    choice = makeOut 0 num
    val    = makeOut 1 num

    makeOut index v = if not (bits !! index)
                      then v else Nothing

    sIns = [choiceStop,valStop]
    --previous state bits
    bits@[b1,b2] = fromMaybe (replicate 2 False) st

    stop | isNothing st          = or sIns
         | otherwise             = or $ zipWith (&&) sIns (map not bits)

    nextState = let newbits = zipWith (||) bits $
                              zipWith (&&) (map not sIns)
                              [isJust choice,isJust val] 
                in if isNothing st || and newbits
                     then Just $ replicate 2 False
                     else Just newbits

case_BoSCont0_1 = case_Lmap1sbosLCall_map100_1

case_Lmap1sbosLCall_map100_1 :: Maybe CTmap1 -> Bool -> Bool -> Bool 
                             -> Maybe [Bool]
                             -> (Maybe CTmap1,Maybe Int, 
                                 Maybe (Pointer CTmap1), Bool, Maybe [Bool])
case_Lmap1sbosLCall_map100_1 cont choiceStop valStop ptrStop st =
  (choice,val,ptr,isNothing cont || stop,nextState)
  where
    (v,p,isCont0) = case cont of
                      Just Cont0        -> (n  ,n   ,True)
                      Just (Cont1 x sp) -> (j x,j sp,False)
                      Nothing           -> (n  ,n   ,False)
    n = Nothing
    j = Just

    choice = makeOut 0 cont
    val    = makeOut 1 v 
    ptr    = makeOut 2 p 

    makeOut index v = if not (bits !! index)
                      then v else Nothing

    sIns = [choiceStop,valStop,ptrStop]
    --previous state bits
    bits@[b1,b2,b3] = fromMaybe falseSet st
    falseSet = replicate 3 False

    stop | isNothing st && isCont0 = choiceStop
         | isNothing st            = or sIns
         | isJust    st && isCont0 = choiceStop && not b1
         | otherwise               = or $ zipWith (&&) sIns (map not bits)

    nextState = let newbits = zipWith (||) bits $
                              zipWith (&&) (map not sIns)
                              [isJust choice,isJust val,isJust ptr] 
                in if isNothing st || isCont0 || and newbits
                     then Just falseSet
                     else Just newbits

case_TrueFalse = case_FalseTrue
case_MyFalseMyTrue = case_FalseTrue
case_FalseTrue :: Maybe Bool -> Bool -> Maybe [Bool]
               -> (Maybe Bool,Bool,Maybe [Bool])
case_FalseTrue bool choiceStop st = (choice,stop,nextState)
  where
    choice = bool
    stop = isNothing bool || choiceStop
    nextState = Just [False]

case_MyTrueMyFalse = case_FalseTrue
case_EmpListEmpCons list choiceStop st = (list,choiceStop,Just [False])
case_LeafBranch tree choiceStop st = (tree,choiceStop,Just [False])

case_LeafBranch0_1_2 :: Maybe Tree -> Bool -> Bool -> Bool -> Bool 
                     -> Maybe [Bool] 
                     -> (Maybe Tree,Maybe (Pointer Tree),Maybe Int,
                         Maybe (Pointer Tree),Bool,Maybe [Bool])
case_LeafBranch0_1_2 scrut choiceStop lStop numStop rStop st = 
  (choice,lptr,num,rptr,isNothing scrut || stop,nextState)
  where
    (l,n,r,isLeaf) = case scrut of
                      Just Leaf             -> (no  ,no ,no  ,True)
                      Just (Branch lp x rp) -> (j lp,j x,j rp,False)
                      Nothing               -> (no  ,no ,no  ,False)
    no = Nothing
    j = Just

    choice = makeOut 0 scrut
    lptr   = makeOut 1 l
    num    = makeOut 2 n 
    rptr   = makeOut 3 r 

    makeOut index v = if not (bits !! index)
                      then v else Nothing

    sIns = [choiceStop,lStop,numStop,rStop]
    --previous state bits
    bits@[b1,b2,b3,b4] = fromMaybe falseSet st

    falseSet = replicate 4 False

    stop | isNothing st && isLeaf = choiceStop
         | isNothing st           = or sIns
         | isJust    st && isLeaf = choiceStop && not b1
         | otherwise              = or $ zipWith (&&) sIns (map not bits)

    nextState = let newbits = zipWith (||) bits $
                              zipWith (&&) (map not sIns)
                              [isJust choice,isJust lptr,isJust num,isJust rptr] 
                in if isNothing st || isLeaf || and newbits
                     then Just falseSet
                     else Just newbits

    

-- Case that only uses a Cons's pointer
case_ListCons1 scrut choiceStop ptrStop st = (choice,ptr,stop,nextSt)
  where
    (choice,_,ptr,stop,nextSt) = chooseList scrut choiceStop False ptrStop st
-- Case that uses all List fields
case_ListCons0_1 = chooseList
case_Cons0_1List = chooseList
case_ListbosListC10_1 = chooseList

case_ConsList scrut choiceStop st = (choice,stop,nextSt)
  where
    (choice,_,_,stop,nextSt) = chooseList scrut choiceStop False False st

case_ListCons scrut choiceStop st = (choice,stop,nextSt)
  where
    (choice,_,_,stop,nextSt) = chooseList scrut choiceStop False False st


-- | Scrutinize a List cell
chooseList :: Maybe List -> Bool -> Bool -> Bool -> Maybe [Bool]
           -> (Maybe List,Maybe Int, Maybe (Pointer List),Bool,Maybe [Bool])
chooseList list choiceStop valStop ptrStop st = (choice,val,ptr,isNothing list || stop,nextState)
  where
    (v,p,isNil) = case list of
                    Just Nil         -> (n  ,n   ,True)
                    Just (Cons x lp) -> (j x,j lp,False)
                    Nothing          -> (n  ,n   ,False)
    n = Nothing
    j = Just

    choice = makeOut 0 list
    val    = makeOut 1 v 
    ptr    = makeOut 2 p 

    makeOut index v = if not (bits !! index)
                      then v else Nothing

    sIns = [choiceStop,valStop,ptrStop]
    --previous state bits
    bits@[b1,b2,b3] = fromMaybe (replicate 3 False) st

    stop | isNothing st && isNil = choiceStop
         | isNothing st          = or sIns
         | isJust    st && isNil = choiceStop && not b1
         | otherwise             = or $ zipWith (&&) sIns (map not bits)

    nextState = let newbits = zipWith (||) bits $
                              zipWith (&&) (map not sIns)
                              [isJust choice,isJust val,isJust ptr] 
                in if isNothing st || isNil || and newbits
                     then Just $ replicate 3 False
                     else Just newbits

case_LbuildTreesbosLCall_buildTree10_1_2_3LCall_buildTree00_1_2 = chooseTreeBuild
case_LtreeMapsbosLCall_treeMap10_1_2_3LCall_treeMap00_1_2 = chooseTreeMap

chooseTreeBuild :: Maybe CTbuildTree -> Bool -> Bool -> Bool -> Bool
                -> Bool -> Bool -> Bool -> Bool -> Maybe [Bool]
                -> (Maybe CTbuildTree,Maybe Int,Maybe Go, Maybe Int,
                    Maybe (Pointer CTbuildTree), Maybe Int,Maybe(Pointer Tree),
                    Maybe (Pointer CTbuildTree),Bool,Maybe[Bool])
chooseTreeBuild cont s1 s2 s3 s4 s5 s6 s7 s8 st =
  (choice,n1,g,n2,pc1,n3,pt,pc2,isNothing cont || stop,nextState)
  where
    (n1',g',n2',pc1',n3',pt',pc2',isBoS,isCont1,isCont0) = case cont of
      Just ContBuildTBoS         -> (n  ,n  ,n  ,n  ,n  ,n  ,n  ,True ,False,False)
      Just (ContBuildT1 a b c d) -> (j a,j b,j c,j d,n  ,n  ,n  ,False,True ,False)
      Just (ContBuildT0 a b c  ) -> (n  ,n  ,n  ,n  ,j a,j b,j c,False,False,True )
      Nothing                    -> (n  ,n  ,n  ,n  ,n  ,n  ,n  ,False,False,False)

    n = Nothing
    j = Just
    
    choice = makeOut 0 cont
    n1     = makeOut 1 n1'
    g      = makeOut 2 g'
    n2     = makeOut 3 n2'
    pc1    = makeOut 4 pc1'
    n3     = makeOut 5 n3'
    pt     = makeOut 6 pt'
    pc2    = makeOut 7 pc2'

    makeOut index v = if not (bits !! index)
                      then v else Nothing



    sIns = [s1,s2,s3,s4,s5,s6,s7,s8]
    --previous state bits
    bits@[b1,b2,b3,b4,b5,b6,b7,b8] = fromMaybe falseSet st

    --Pertinant bits,stops, and valids based on scrutineee
    twoBits      = [b1,b2,b3,b4,b5]
    twoStops     = [s1,s2,s3,s4,s5]
    twoValids    = [isJust choice,isJust n1,isJust g,isJust n2,isJust pc1]
    threeBits    = [b1,b6,b7,b8]
    threeStops   = [s1,s6,s7,s8]
    threeValids  = [isJust choice,isJust n3,isJust pt,isJust pc2]

    falseSet = (replicate 8 False)

    stop | isNothing st && isBoS   = s1
         | isNothing st && isCont1 = or twoStops
         | isNothing st && isCont0 = or threeStops
         | isJust    st && isBoS   = s1 && not b1
         | isJust    st && isCont1 = or $ zipWith (&&) twoStops
                                        $ map not      twoBits
         | isJust    st && isCont0 = or $ zipWith (&&) threeStops
                                        $ map not      threeBits
         | otherwise               = False

    newBits | isBoS   = falseSet
            | isCont1 = let bs = zipWith (||) twoBits $ 
                                 zipWith (&&) (map not twoStops) 
                                              twoValids
                        in bs ++ replicate 3 (and bs)
            | otherwise = let bs = zipWith (||) threeBits $ 
                                   zipWith (&&) (map not threeStops) 
                                                threeValids
                          in head bs : replicate 4 (and bs) ++ (tail bs)

    nextState = if isNothing st || and newBits
                then Just falseSet
                else Just newBits

case_LlargeTreesbosLCall_largeTree20_1_2_3LCall_largeTree10_1_2_3LCall_largeTree00_1_2 = 
  chooseLargeTree
chooseLargeTree cont s1 s2 s3 s4 s5 s6 s7 s8 s9 s10 s11 s12 st =
  (choice,o1,o2,o3,o4,o5,o6,o7,o8,o9,o10,o11,isNothing cont || stop,nextState)
  where
    (o1',o2',o3',o4',o5',o6',o7',o8',o9',o10',o11',isBoS,isCont2,isCont1,isCont0) = case cont of
      Just ContLargeTBoS         -> (n  ,n  ,n  ,n  ,n  ,n  ,n  ,n  ,n  ,n  ,n  ,True ,False,False,False)
      Just (ContLargeT2 a b c d) -> (j a,j b,j c,j d,n  ,n  ,n  ,n  ,n  ,n  ,n  ,False,True ,False,False)
      Just (ContLargeT1 a b c d) -> (n  ,n  ,n  ,n  ,j a,j b,j c,j d,n  ,n  ,n  ,False,False,True ,False)
      Just (ContLargeT0 a b c  ) -> (n  ,n  ,n  ,n  ,n  ,n  ,n  ,n  ,j a,j b,j c,False,False,False,True )
      Nothing                  -> (n  ,n  ,n  ,n  ,n  ,n  ,n  ,n  ,n  ,n  ,n  ,False,False,False,False)

    n = Nothing
    j = Just
    
    choice = makeOut 0 cont
    o1    = makeOut 1 o1'
    o2    = makeOut 2 o2'
    o3    = makeOut 3 o3'
    o4    = makeOut 4 o4'
    o5    = makeOut 5 o5'
    o6    = makeOut 6 o6'
    o7    = makeOut 7 o7'
    o8    = makeOut 8 o8'
    o9    = makeOut 9 o9'
    o10    = makeOut 10 o10'
    o11    = makeOut 11 o11'

    makeOut index v = if not (bits !! index)
                      then v else Nothing

    sIns = [s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12]
    --previous state bits
    bits@[b1,b2,b3,b4,b5,b6,b7,b8,b9,b10,b11,b12] = fromMaybe falseSet st

    --Pertinant bits,stops, and valids based on scrutineee
    twoBits      = [b1,b2,b3,b4,b5]
    twoStops     = [s1,s2,s3,s4,s5]
    twoValids    = [isJust choice,isJust o1,isJust o2,isJust o3,isJust o4]
    threeBits    = [b1,b6,b7,b8,b9]
    threeStops   = [s1,s6,s7,s8,s9]
    threeValids  = [isJust choice,isJust o5,isJust o6,isJust o7,isJust o8]
    fourBits    = [b1,b10,b11,b12]
    fourStops   = [s1,s10,s11,s12]
    fourValids  = [isJust choice,isJust o9,isJust o10,isJust o11]

    falseSet = (replicate 12 False)

    stop | isNothing st && isBoS   = s1
         | isNothing st && isCont2 = or twoStops
         | isNothing st && isCont1 = or threeStops 
         | isNothing st && isCont0 = or fourStops
         | isJust    st && isBoS   = s1 && not b1
         | isJust    st && isCont2 = or $ zipWith (&&) twoStops
                                        $ map not      twoBits
         | isJust    st && isCont1 = or $ zipWith (&&) threeStops
                                        $ map not      threeBits
         | isJust    st && isCont0 = or $ zipWith (&&) fourStops
                                        $ map not      fourBits
         | otherwise               = False

    newBits | isBoS   = falseSet
            | isCont2 = let bs = zipWith (||) twoBits $ 
                                 zipWith (&&) (map not twoStops) 
                                              twoValids
                        in bs ++ replicate 7 (and bs)
            | isCont1 = let bs = zipWith (||) threeBits $ 
                                 zipWith (&&) (map not threeStops) 
                                              threeValids
                        in head bs : replicate 4 (and bs) ++ (tail bs) ++ replicate 3 (and bs)
            | otherwise = let bs = zipWith (||) fourBits $ 
                                   zipWith (&&) (map not fourStops) 
                                                fourValids
                          in head bs : replicate 8 (and bs) ++ (tail bs)

    nextState = if isNothing st || and newBits
                then Just falseSet
                else Just newBits

chooseTreeMap :: Maybe CTtreeMap -> Bool -> Bool -> Bool -> Bool
                -> Bool -> Bool -> Bool -> Bool -> Maybe [Bool]
                -> (Maybe CTtreeMap,Maybe (Pointer Tree),Maybe Go, Maybe Int,
                    Maybe (Pointer CTtreeMap), Maybe Int,Maybe(Pointer Tree),
                    Maybe (Pointer CTtreeMap),Bool,Maybe[Bool])
chooseTreeMap cont s1 s2 s3 s4 s5 s6 s7 s8 st =
  (choice,pt1,g,n2,pc1,n3,pt2,pc2,isNothing cont || stop,nextState)
  where
    (pt1',g',n2',pc1',n3',pt2',pc2',isBoS,isCont1,isCont0) = case cont of
      Just ContMapTBoS         -> (n  ,n  ,n  ,n  ,n  ,n  ,n  ,True ,False,False)
      Just (ContMapT1 a b c d) -> (j a,j b,j c,j d,n  ,n  ,n  ,False,True ,False)
      Just (ContMapT0 a b c  ) -> (n  ,n  ,n  ,n  ,j a,j b,j c,False,False,True )
      Nothing                  -> (n  ,n  ,n  ,n  ,n  ,n  ,n  ,False,False,False)

    n = Nothing
    j = Just
    
    choice = makeOut 0 cont
    pt1    = makeOut 1 pt1'
    g      = makeOut 2 g'
    n2     = makeOut 3 n2'
    pc1    = makeOut 4 pc1'
    n3     = makeOut 5 n3'
    pt2    = makeOut 6 pt2'
    pc2    = makeOut 7 pc2'

    makeOut index v = if not (bits !! index)
                      then v else Nothing

    sIns = [s1,s2,s3,s4,s5,s6,s7,s8]
    --previous state bits
    bits@[b1,b2,b3,b4,b5,b6,b7,b8] = fromMaybe falseSet st

    --Pertinant bits,stops, and valids based on scrutineee
    twoBits      = [b1,b2,b3,b4,b5]
    twoStops     = [s1,s2,s3,s4,s5]
    twoValids    = [isJust choice,isJust pt1,isJust g,isJust n2,isJust pc1]
    threeBits    = [b1,b6,b7,b8]
    threeStops   = [s1,s6,s7,s8]
    threeValids  = [isJust choice,isJust n3,isJust pt2,isJust pc2]

    falseSet = (replicate 8 False)

    stop | isNothing st && isBoS   = s1
         | isNothing st && isCont1 = or twoStops
         | isNothing st && isCont0 = or threeStops
         | isJust    st && isBoS   = s1 && not b1
         | isJust    st && isCont1 = or $ zipWith (&&) twoStops
                                        $ map not      twoBits
         | isJust    st && isCont0 = or $ zipWith (&&) threeStops
                                        $ map not      threeBits
         | otherwise               = False

    newBits | isBoS   = falseSet
            | isCont1 = let bs = zipWith (||) twoBits $ 
                                 zipWith (&&) (map not twoStops) 
                                              twoValids
                        in bs ++ replicate 3 (and bs)
            | otherwise = let bs = zipWith (||) threeBits $ 
                                   zipWith (&&) (map not threeStops) 
                                                threeValids
                          in head bs : replicate 4 (and bs) ++ (tail bs)

    nextState = if isNothing st || and newBits
                then Just falseSet
                else Just newBits

case_LdfssbosLCall_dfs20_1_2LCall_dfs10_1_2 = chooseDFS
case_LdfssbosLCall_dfs20_1_2LCall_dfs11_2 cont s1 s2 s3 s4 s5 s6 st =
  (choice,n1,g,n2,pt,pc2,stop,nextState)
  where
  (choice,n1,g,n2,_,pt,pc2,stop,nextState) = 
    chooseDFS cont s1 s2 s3 s4 False s5 s6 st 

chooseDFS :: Maybe CTdfs -> Bool -> Bool -> Bool -> Bool
                -> Bool -> Bool -> Bool -> Maybe [Bool]
                -> (Maybe CTdfs,Maybe Int,Maybe (Pointer Tree),
                    Maybe (Pointer CTdfs), Maybe(Pointer List),
                    Maybe (Pointer CTdfs),Maybe Int,Bool,Maybe[Bool])
chooseDFS cont s1 s2 s3 s4 s5 s6 s7 st =
  (choice,n1,g,n2,n3,pt,pc2,isNothing cont || stop,nextState)
  where
    (n1',g',n2',n3',pt',pc2',isBoS,isCont1,isCont0) = case cont of
      Just CTdfsBoS        -> (n  ,n  ,n  ,n  ,n  ,n  ,True ,False,False)
      Just (CTdfsT2 a b c) -> (j a,j b,j c,n  ,n  ,n  ,False,True ,False)
      Just (CTdfsT1 a b c) -> (n  ,n  ,n  ,j a,j b,j c,False,False,True )
      Nothing                -> (n  ,n  ,n  ,n  ,n  ,n  ,False,False,False)

    n = Nothing
    j = Just
    
    choice = makeOut 0 cont
    n1     = makeOut 1 n1'
    g      = makeOut 2 g'
    n2     = makeOut 3 n2'
    n3     = makeOut 4 n3'
    pt     = makeOut 5 pt'
    pc2    = makeOut 6 pc2'

    makeOut index v = if not (bits !! index)
                      then v else Nothing



    sIns = [s1,s2,s3,s4,s5,s6,s7]
    --previous state bits
    bits@[b1,b2,b3,b4,b5,b6,b7] = fromMaybe falseSet st

    --Pertinant bits,stops, and valids based on scrutineee
    twoBits      = [b1,b2,b3,b4]
    twoStops     = [s1,s2,s3,s4]
    twoValids    = [isJust choice,isJust n1,isJust g,isJust n2]
    threeBits    = [b1,b5,b6,b7]
    threeStops   = [s1,s5,s6,s7]
    threeValids  = [isJust choice,isJust n3,isJust pt,isJust pc2]

    falseSet = replicate 7 False

    stop | isNothing st && isBoS   = s1
         | isNothing st && isCont1 = or twoStops
         | isNothing st && isCont0 = or threeStops
         | isJust    st && isBoS   = s1 && not b1
         | isJust    st && isCont1 = or $ zipWith (&&) twoStops
                                        $ map not      twoBits
         | isJust    st && isCont0 = or $ zipWith (&&) threeStops
                                        $ map not      threeBits
         | otherwise               = False

    newBits | isBoS   = falseSet
            | isCont1 = let bs = zipWith (||) twoBits $ 
                                 zipWith (&&) (map not twoStops) 
                                              twoValids
                        in bs ++ replicate 3 (and bs)
            | otherwise = let bs = zipWith (||) threeBits $ 
                                   zipWith (&&) (map not threeStops) 
                                                threeValids
                          in head bs : replicate 3 (and bs) ++ (tail bs)

    nextState = if isNothing st || and newBits
                then Just falseSet
                else Just newBits

case_LmergeSortsbosLCall_mergeSort10_1LCall_mergeSort00_1 = caseMergeSort
case_LmergesbosLCall_merge10_1LCall_merge00_1 = caseMerge
    
caseMerge scrut s1 s2 s3 s4 s5 st = 
  (choice,d1,d2,d3,d4,isNothing scrut || stop,nextState)
  where
    (d1',d2',d3',d4',isBoS,isCont1,isCont0) = case scrut of
      Just CTmergebos     -> (n  ,n  ,n  ,n  ,True ,False,False)
      Just (CTmerge1 a b) -> (j a,j b,n  ,n  ,False,True ,False)
      Just (CTmerge0 a b) -> (n  ,n  ,j a,j b,False,False,True )
      Nothing            -> (n  ,n  ,n  ,n  ,False,False,False)

    n = Nothing
    j = Just
    
    choice = makeOut 0 scrut
    d1    = makeOut 1 d1'
    d2    = makeOut 2 d2'
    d3    = makeOut 3 d3'
    d4    = makeOut 4 d4'

    makeOut index v | index > 4 = error $ "Index is " ++ show index
                    | not (bits !! index) = v
                    | otherwise = Nothing



    sIns = [s1,s2,s3,s4,s5]
    --previous state bits
    bits@[b1,b2,b3,b4,b5] = fromMaybe falseSet st

    --Pertinant bits,stops, and valids based on scrutineee
    twoBits      = [b1,b2,b3]
    twoStops     = [s1,s2,s3]
    twoValids    = [isJust choice,isJust d1,isJust d2]
    threeBits    = [b1,b4,b5]
    threeStops   = [s1,s4,s5]
    threeValids  = [isJust choice,isJust d3,isJust d4]

    falseSet = replicate 5 False

    stop | isNothing st && isBoS   = s1
         | isNothing st && isCont1 = or twoStops
         | isNothing st && isCont0 = or threeStops
         | isJust    st && isBoS   = s1 && not b1
         | isJust    st && isCont1 = or $ zipWith (&&) twoStops
                                        $ map not      twoBits
         | isJust    st && isCont0 = or $ zipWith (&&) threeStops
                                        $ map not      threeBits
         | otherwise               = False

    newBits | isBoS   = falseSet
            | isCont1 = let bs = zipWith (||) twoBits $ 
                                 zipWith (&&) (map not twoStops) 
                                              twoValids
                        in bs ++ replicate 2 (and bs)
            | otherwise = let bs = zipWith (||) threeBits $ 
                                   zipWith (&&) (map not threeStops) 
                                                threeValids
                          in head bs : replicate 2 (and bs) ++ (tail bs)

    nextState = if isNothing st || and newBits
                then Just falseSet
                else Just newBits
    
caseMergeSort scrut s1 s2 s3 s4 s5 st = 
  (choice,d1,d2,d3,d4,isNothing scrut || stop,nextState)
  where
    (d1',d2',d3',d4',isBoS,isCont1,isCont0) = case scrut of
      Just CTmergeSortbos     -> (n  ,n  ,n  ,n  ,True ,False,False)
      Just (CTmergeSort1 a b) -> (j a,j b,n  ,n  ,False,True ,False)
      Just (CTmergeSort0 a b) -> (n  ,n  ,j a,j b,False,False,True )
      Nothing                -> (n  ,n  ,n  ,n  ,False,False,False)

    n = Nothing
    j = Just
    
    choice = makeOut 0 scrut
    d1    = makeOut 1 d1'
    d2    = makeOut 2 d2'
    d3    = makeOut 3 d3'
    d4    = makeOut 4 d4'

    makeOut index v | index > 4 = error $ "Index is " ++ show index
                    | not (bits !! index) = v
                    | otherwise = Nothing



    sIns = [s1,s2,s3,s4,s5]
    --previous state bits
    bits@[b1,b2,b3,b4,b5] = fromMaybe falseSet st

    --Pertinant bits,stops, and valids based on scrutineee
    twoBits      = [b1,b2,b3]
    twoStops     = [s1,s2,s3]
    twoValids    = [isJust choice,isJust d1,isJust d2]
    threeBits    = [b1,b4,b5]
    threeStops   = [s1,s4,s5]
    threeValids  = [isJust choice,isJust d3,isJust d4]

    falseSet = replicate 5 False

    stop | isNothing st && isBoS   = s1
         | isNothing st && isCont1 = or twoStops
         | isNothing st && isCont0 = or threeStops
         | isJust    st && isBoS   = s1 && not b1
         | isJust    st && isCont1 = or $ zipWith (&&) twoStops
                                        $ map not      twoBits
         | isJust    st && isCont0 = or $ zipWith (&&) threeStops
                                        $ map not      threeBits
         | otherwise               = False

    newBits | isBoS   = falseSet
            | isCont1 = let bs = zipWith (||) twoBits $ 
                                 zipWith (&&) (map not twoStops) 
                                              twoValids
                        in bs ++ replicate 2 (and bs)
            | otherwise = let bs = zipWith (||) threeBits $ 
                                   zipWith (&&) (map not threeStops) 
                                                threeValids
                          in head bs : replicate 2 (and bs) ++ (tail bs)

    nextState = if isNothing st || and newBits
                then Just falseSet
                else Just newBits

case_TupGo__Pointer_List__Pointer_CTmap10_1_2 = caseTup3
case_TupGo__Int_32__Int_320_1_2 = caseTup3
case_TupPointer_CTmerge__Pointer_List0_1 = caseTup2
case_TupPointer_CTmerge__Pointer_List__Pointer_List0_1_2 = caseTup3
case_TupPointer_ContList__Pointer_List0_1 = caseTup2
case_TupPointer_List__Go__Pointer_CTmergeSort0_1_2 = caseTup3
case_TupPointer_CTmergeSort__Go__Pointer_List0_1_2 = caseTup3
case_TupPointer_List__Go__Pointer_CTdfs0_1_2 = caseTup3
case_TupPointer_CTdfs__Go__Pointer_Tree0_1_2 = caseTup3
case_TupPointer_Tree__Go__Pointer_CTlargeTree0_1_2 = caseTup3
case_TupPointer_CTfilter1__Pointer_List__Pointer_List0_1_2 = caseTup3
case_TupPointer_CTfilter1__Pointer_List__Go0_1_2 = caseTup3
case_TupPointer_CTfilter1__Pointer_List0_1 = caseTup2
case_TupPointer_List__Pointer_CTfilter10_1 = caseTup2
case_TupPointer_List__Go0_1 = caseTup2
case_TupPointer_List__Pointer_List__Go0_1_2 = caseTup3
case_TupPointer_List__Pointer_List__Pointer_CTfilter10_1_2 = caseTup3
case_TupInt_32__Int_32__Pointer_List__Go0_1_2_3 = caseTup4
case_TupGo__Pointer_Tree__Pointer_CTdfs0_1_2 = caseTup3
case_TupGo__Pointer_List__Pointer_CTdfs0_1_2 = caseTup3
case_TupPointer_List__Pointer_ContList0_1 = caseTup2
case_TupPointer_List__Pointer_CTfilter1__Go0_1_2 = caseTup3
case_TupPointer_List__Pointer_CTmap1__Go0_1_2 = caseTup3
case_TupList__Pointer_CTmap1__Go0_1_2 = caseTup3
case_TupInt_32__Go0_1 = caseTup2
case_TupGo__Int_32__Int_32__Pointer_CTbuildTree0_1_2_3 = caseTup4
case_TupPointer_Tree__Pointer_CTbuildTree0_1 = caseTup2
case_TupGo__Pointer_Tree__Pointer_CTtreeMap0_1_2 = caseTup3
case_TupPointer_Tree__Pointer_CTtreeMap0_1 = caseTup2
case_TupGo__Int_320_1 = caseTup2
case_TupPointer_List__Pointer_List__Pointer_CTmerge0_1_2 = caseTup3
case_TupPointer_List__Pointer_CTmerge0_1 = caseTup2
case_TupGo__Pointer_List__Pointer_CTmergeSort0_1_2 = caseTup3
case_TupInt_32__Int_32__Go__Pointer_CTlargeTree0_1_2_3 = caseTup4
case_TupGo__Pointer_Tree__Pointer_CTlargeTree0_1_2 = caseTup3
case_TupPointer_CTmap1__Pointer_List__Go0_1_2 = caseTup3
case_TupGo__Int_32__Int_32__Pointer_CTlargeTree0_1_2_3 = caseTup4
case_TupPointer_CTtreeMap__Pointer_Tree0_1 = caseTup2

caseTup2 scrut s1 s2 s3 st = (choice,out1,out2,stop,nextState)
  where
    (o1,o2) = case scrut of 
         Just (Tup2 v1 v2) -> (Just v1,Just v2)
         _                 -> (Nothing,Nothing)

    choice = makeOut 0 scrut
    out1   = makeOut 1 o1
    out2   = makeOut 2 o2

    makeOut index v = if not (bits !! index)
                      then v else Nothing

    sIns = [s1,s2,s3]
    --previous state bits
    bits@[b1,b2,b3] = fromMaybe falseSet st
    falseSet = replicate 3 False

    (stop,nextState) = stopAndNextTup st sIns bits
                       [isJust choice,isJust out1,isJust out2]
    
caseTup3 scrut s1 s2 s3 s4 st = (choice,out1,out2,out3,stop,nextState)
  where
    (o1,o2,o3) = case scrut of 
         Just (Tup3 v1 v2 v3) -> (Just v1,Just v2,Just v3)
         _                    -> (Nothing,Nothing,Nothing)

    choice = makeOut 0 scrut
    out1   = makeOut 1 o1
    out2   = makeOut 2 o2
    out3   = makeOut 3 o3

    sIns = [s1,s2,s3,s4]
    bits = fromMaybe falseSet st
    falseSet = replicate 4 False

    makeOut index v = if not (bits !! index)
                      then v else Nothing

    (stop,nextState) = stopAndNextTup st sIns bits
                       [isJust choice,isJust out1,isJust out2,isJust out3]

caseTup4 scrut s1 s2 s3 s4 s5 st = (choice,out1,out2,out3,out4,stop,nextState)
  where
    (o1,o2,o3,o4) = case scrut of 
         Just (Tup4 v1 v2 v3 v4) -> (Just v1,Just v2,Just v3,Just v4)
         _                       -> (Nothing,Nothing,Nothing,Nothing)

    choice = makeOut 0 scrut
    out1   = makeOut 1 o1
    out2   = makeOut 2 o2
    out3   = makeOut 3 o3
    out4   = makeOut 4 o4

    sIns = [s1,s2,s3,s4,s5]
    bits = fromMaybe falseSet st
    falseSet = replicate 5 False

    makeOut index v = if not (bits !! index)
                      then v else Nothing

    (stop,nextState) = stopAndNextTup st sIns bits
                       [isJust choice,isJust out1,isJust out2,isJust out3,isJust out4]

stopAndNextTup st sIns bits justs = (not (head justs) || stop,nextState)
  where
    stop | isNothing st = or sIns
         | otherwise    = or $ zipWith (&&) sIns (map not bits)
    
    falseSet = replicate (length bits) False

    nextState = let newbits = zipWith (||) bits $
                              zipWith (&&) (map not sIns) justs
                in if isNothing st || and newbits
                     then Just falseSet
                     else Just newbits

