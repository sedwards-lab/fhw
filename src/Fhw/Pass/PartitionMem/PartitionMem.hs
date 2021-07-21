{- |
Module : Fhw.Pass.PartitionMem.PartitionMem
Description : Apply variant of Dominguez et al.'s heap allocation algorithm to
partition our on-chip memory by type.

This algorithm was introduced in "Heap Data Allocation to Scratch-Pad Memory
in Embedded Systesm" by Dominguez et al. (hereafter referenced as [1]).

-----------
ASSUMPTIONS
-----------

1. The Analysis data structure has a "writeSites" ("readSites") field mapping 
   every write (read) site to a unique integer.
2. All function arguments and case scrutinees are variable expression.
3. No polymorphism exists.
4. All variable names are unique.
5. No higher-order functions.
6. All recursive types are passed between functions as pointers; read and
   write are the only functions that produce or consume the actual pointee
   structures (e.g. lists, trees).



-------------
THE ALGORITHM
-------------

INPUT: Every unique write and read site.
       Profiling information for each memory variable:
        - total size (bytes)
        - write site producing that variable
        - for each read site accessing this variable, total access count
OUTPUT: Sizes for each type's on-chip memory.
        For each memory, the memory chunks swapped between off- and on-chip
        memory at each program point.

1. Generate the call-graph for the program, G, and its condensation G'
   (obtained by contracted each strongly-connected component of G into a single
   vertex).  Each vertex in G' (a collection of one or more functions) captures 
   a "region".

2. Associate profiling information with each memory variable in each region. A
   memory variable comprises all the data written by a single write site
   over the program's execution. Thus the size of a memory variable is
   the total number of objects written by the site multiplied by the size
   of one of those objects.

3. Perform Dominguez's bin computation, with some variations to take 
   into account how our stacks work and our type-based memories.

4. Perform a partitioning and layout algorithm to determine how much on-
   chip memory to allocate for each type, and which bins will be placed
   in those partitions.

-}
module Fhw.Pass.PartitionMem.PartitionMem where

--import Debug.Trace (trace)

import Fhw.Core.Core
import Fhw.ProfileParser.ProfileInfo
import Fhw.Pass.PartitionMem.PointerAnalysis (initialSets, andersen, 
                                              StaticInfo(..), PInfo(..),
                                              tranClosFunc, collectFuncInfo)
import Fhw.Pass.PartitionMem.Utils
import Control.Monad.State
import Control.Arrow
import Data.List
import Data.Char (isDigit)
import Data.Maybe (fromMaybe, mapMaybe, fromJust, isNothing)
import Data.Graph
import Data.Monoid
import qualified Data.Set as Set
import qualified Data.Map as Map

showAll :: Show a => [a] -> String
showAll = intercalate "\n" . map show


--------------------------------
-- | Types for Bin computation
--------------------------------

type ReadSite = Int
type WriteSite = Int
data AccessInfo = AInfo { memVar :: WriteSite --Allocation site
                        , memSize :: Int      --Total size in bits
                        , tySize  :: Int      --Size of this variable's type
                        , siteTy  :: Ty       --Type of object allocated
                        , accesses :: [(ReadSite,Int)] --(read site, access count)
                        } deriving Show

-- | Each "bin" is associated with a given write site, has a total number of
-- accesses to that bin's variable over execution, a total size (in both bits
-- and number of objects allocated to that bin), and a list of regions in which
-- it could be accessed (the latter determined using points-to analysis)
data Bin = Bin (WriteSite,Ty) Int (Int,Int) [Int] 

instance Show Bin where
  show (Bin (site,ty) accs (bitSize,objNum) regs) = 
    "Bin { site: " ++ show site ++ ", type: " ++ show ty ++ ", accesses: " 
    ++ show accs ++ ", size (bits): " ++ show bitSize ++ ", size (# objects): "
    ++ show objNum ++ ", regions: " ++ show regs ++ "}"

-- | Perform memory partitioning
partitionMem :: ProfileInfo -> Module -> Analysis -> (Module, Analysis)
partitionMem (ProfileInfo profile) m@(Module _ tdefs vdefs) an 
  | null profile = (m,an) --don't do anything if we don't have profiling info
  | otherwise = (assert m, newAnalysis)
  where
    -- Step 1: Regions for bin size computation
    regions = mkRegions vdefs
    -- Step 2: Pointer analysis, keeping only actual pointers (the algorithm
    -- also takes types carrying points into account)
    pointsMap = Map.filterWithKey (\k _ -> k `elem` allHeapVars) $
                andersen ptrTys initGraph
    -- Step 3: Create a bin for each heap variable
    (maxOnChip,bins) = binComputation pointsMap regions accessInfo
    -- Step 4: Partition our on-chip memory by type, and layout as many bins
    -- as possible in each partition.
    (excessSRAM,finalPartitions) = mkPartitions maxOnChip bins
    -- Step 5: Add partitions to Analysis structure to pass to DFC
    newAnalysis = an { partitions = map cleanUp $ 
                                    filter (not . Map.null . allocated . snd) $
                                    Map.toList finalPartitions } 
      where
        cleanUp (ty,p) = (ty, partitionSize p, objSize, 
                          Map.foldrWithKey mkChunk [] addrMap)
          where
            --if the addrMap isn't empty, there has to be a bin at address 0
            objSize = (\(Bin _ _ (total,objNum) _) -> total `div` objNum)
                     $ head $ snd $ Map.findMin addrMap  
            tyName = case ty of
                      Tcon (_,n) -> n
                      _ -> error "Unexpected type for partition"
            addrMap = allocated p
            mkChunk addr binList chunks = (addr, map getInfo binList) : chunks
            getInfo (Bin (site,_) _ (size,_) regs) = (size, site, concatMap getIDs regs)
            getIDs reg = case lookup reg regions of
                          Just (_,memcalls) -> map extractID $ 
                                               filter (tyName `isSuffixOf`) $
                                               filter ("read_" `isPrefixOf`) memcalls
                          _ -> []
            extractID = (read . takeWhile isDigit . drop 1 . dropWhile (/='_'))


    -- Profile information from executing this program
    accessInfo = map (mkAccessInfo writeTypes) $ getAccess $ 
                 lookup "memvar_profile" profile
      where
        getAccess (Just (MetaInfo (ProfileInfo l))) = l
        getAccess _ = error "No memvar_profile field found in ProfileInfo"
        writeTypes = mapMaybe numAndType $ filter (isWrite . vdefName) vdefs
        numAndType (Vdef (_,n) t _) = 
          let newName = drop 6 n
              num = takeWhile isDigit newName 
              (_,argTy) = collectArgTypes t
          in if null num --we only want to collect the write_*_T wrappers
             then Nothing
             else if length argTy /= 1
                  then error "A write should have exactly one argument"
                  else Just (read num :: Int, head argTy)
                     

    -- initial points-to graph 
    (_,initGraph) = execState (mapM (initialSets sInfo) 
                                (filter (notMemFunc . vdefName) vdefs)) ([],[])
    sInfo = SInfo { allDefs = vdefs
                  , ptys = ptrTys
                  , recTys = rTys
                  , analysis = an
                  , pfuncs = finalPFuncs
                  }

    finalPFuncs = tranClosFunc pointerFuncInfo
    pointerFuncInfo = mapMaybe (collectFuncInfo ptrTys an) $
                      filter (notMemFunc . vdefName) vdefs


    (ptrTys, rTys) = findPtrTdefs tdefs
    pointerTypes = map tdefToTy $ 
                   filter (("Pointer" `isPrefixOf`) . tdefName) tdefs 

    --Every variable of ptype in the program
    allPtypeVars = sort $
                   concatMap snd $ 
                   filter (notMemFunc . fst) $ 
                   filter (not . null . snd) $ 
                   map (collectTypedVars ptrTys) vdefs
    --Every pointer variable in the program. By definition,
    --allHeapVars is a subset of allPtypeVars.
    allHeapVars = sort $
                  concatMap snd $ 
                  filter (notMemFunc . fst) $ 
                  filter (not . null . snd) $ 
                  map (collectTypedVars pointerTypes) vdefs
    --Perform various sanity checks
    assert m' | not eqCheck = ptrErr
              | not allSites = siteErr
              | sort (Map.keys pointsMap) /= allHeapVars = otherErr
              | otherwise = m'
    eqCheck = sort allPtypeVars == sorted
    allSites = sort (map fst (readSites an ++ writeSites an)) ==
               sort (concatMap (snd . snd) regions)
    sorted = sort $ nub $ map vname initGraph
    otherErr = error $ "The final map is missing some variables of pointer" ++
                       "type: " ++ showAll (zip allHeapVars 
                                                (sort $ Map.keys pointsMap))
    ptrErr = error $ "Memory variables found by points-to analysis do not "
                   ++ "match all those found in program:" 
                   ++ showAll (zip allPtypeVars sorted)
    siteErr = error $ "Access sites in all regions do not match those provided"
                   ++ "by analysis structure: "
                   ++ showAll (zip (sort (readSites an ++ writeSites an))
                                   (sort (concatMap (snd . snd) regions)))

-- | Create the regions for this program corresponding to each SCC in the call
-- graph containing any "write" or "read" calls. Each region is captured by a
-- tuple consisting of a unique ID and the lists of all memory variables
-- accessed and all write/read sites found in the region's SCC.
mkRegions :: [Vdef] -> [(Int,([Var],[MemCall]))]
mkRegions vdefs = regions
  where
    regions  = zip [1..] $                 --give each region a unique ID
               filter (not . null . snd) $ --ignore any regions without accesses
               map snd sccMems             --collect info for each region
    sccMems  = map convert $               --put SCCs into better format
               stronglyConnCompR $         --generate SCC call graph
               map (\(v,(info,callees)) -> (info,v,callees)) callGraph
    convert (AcyclicSCC (info,v,_)) = ([v],info)
    convert (CyclicSCC verts) = mconcat $ map listify verts
    listify (info,caller,_) = ([caller], info)
    callGraph = map mkCallNode $ filter (notMemFunc . vdefName) vdefs


type MemCall = Var
type FuncCall = Var
-- | Collect all functions called by this definition (except writes), 
--   partitioned by whether each is a read function call.
--   Also collect every variable of pointer type that's passed to a read
--   function or generated by a write call.
mkCallNode :: Vdef -> (Var, (([Var],[MemCall]),[FuncCall]))
mkCallNode (Vdef (_,name) _ ex) = (name, nubEach $ go ex)
  where
    go :: Exp -> (([Var],[MemCall]),[FuncCall])
    go (Case e _ _ alts) = mappend (go e) $ mconcat $ map (altHelp go) alts
    go (Lam _ e) = go e
    go (Let vds e) = mappend (go e) $ mconcat $ map (helper go) vds
    go e = let (call, args, _) = collectArgs e in
           case call of
            Var (_,n) t -> (([getVarName var | var <- args, "read_" `isPrefixOf` n ]
                            ,[n | not (notMemFunc n) ])
                            ,[n | isFunctionTy t && notMemFunc n])
            _ -> (([],[]),[])

    --Check if this variable is bound to a write call result (lexically found 
    --in the definition).
    helper f (Vdef (_,n) _ e') = (if hasWrite e' 
                                  then mappend (([n],[]),[]) 
                                  else id) $ f e'
      where
        hasWrite (Case _ _ _ alts) = any (altHelp hasWrite) alts 
        hasWrite (Lam _ e) = hasWrite e
        hasWrite (Let _ e) = hasWrite e
        hasWrite e = let (call,_,_) = collectArgs e in
                     case call of
                      Var (_,var) _ -> "write_" `isPrefixOf` var
                      _ -> False

    nubEach ((l1,l2),l3) = ((nub l1, nub l2), nub l3)

-- | Build access info records from profile data
mkAccessInfo :: [(Int,Ty)] -> (String,MetaVal) -> AccessInfo
mkAccessInfo writeTys (siteName,MetaInfo (ProfileInfo info)) = 
  AInfo { memVar = siteNum
        , memSize = siteSize
        , tySize  = siteTySize
        , siteTy = fromMaybe (error $ "Can't find write site " ++ show siteNum 
                              ++ " among sites " ++ showAll writeTys ) $ 
                   lookup siteNum writeTys
        , accesses = map convertAccess $ 
                     filter (("access_" `isPrefixOf`) . fst) info
        }
  where
    siteNum :: Int
    siteNum = if "site_" `isPrefixOf` siteName && all isDigit (drop 5 siteName)
                then read (drop 5 siteName) 
                else error $ "Unexpected site format: " ++ siteName
    siteSize = case lookup "total_size_bits" info of
                Just (MetaInt num) -> fromInteger num
                Just i -> error $ "Unexpected total_size_bits format: " ++ show i
                Nothing -> error "No total_size_bits field found in info"
    siteTySize = case lookup "obj_size_bits" info of
                  Just (MetaInt num) -> fromInteger num
                  Just i -> error $ "Unexpected obj_size format: " ++ show i
                  Nothing -> error "No obj_size_bits field found in info"
    convertAccess :: (String,MetaVal) -> (ReadSite, Int)
    convertAccess (rSite, MetaInt num) = (read (drop 7 rSite), fromInteger num)
    convertAccess _ = error "Unexpected value associated with access site"
mkAccessInfo _ _ = error "Unexpected format for access info"

-- | Assign a bin size to each memory variable using 
--   Dominguez et al.'s algorithm. Also return 5% of the total
--   size of the data, as this is what they used to determine how
--   much on-chip memory they could access.
binComputation :: Map.Map Var (Set.Set Int) -> 
                  [(Int,([Var],[MemCall]))] -> 
                  [AccessInfo] -> (Int, [Bin])
binComputation pointsMap regions accInfo = (maxOnChip,finalBins)
  where
    --Following Dominguez et al., we operate under the assumption that we can
    --store 5% of the program's data on-chip at once.
    maxOnChip :: Int
    maxOnChip = let totalSize = sum $ map memSize accInfo in
                fromIntegral (floor $ toRational totalSize * 0.05 :: Integer)
    --Each consensus bin's region list corresponds to the regions where the bin
    --was accessed in the profile run. Replace this list with all the regions
    --where the bin could be accessed as dictated by points-to analysis. This
    --should be a superset of the consensus bin's regions
    finalBins = map updateRegs consensusBins
      where
        updateRegs :: Bin -> Bin
        updateRegs (Bin (site,ty) x y regs) = 
          let --all lexical variables that are accessed and could correspond to
              --this bin's memory variable
              accessed = Map.keys $ Map.filter (site `Set.member`) pointsMap
              --all regions in which those variables are accessed
              otherRegs = map fst $ 
                          filter (any (`elem` accessed) . fst . snd) regions
          in if any (`notElem` otherRegs) regs
              then error $ "A region where memory location " ++ show site 
                   ++ " was accessed during profiling doesn't contain any"
                   ++ " lexical variables that could point to that location."
              else Bin (site,ty) x y (sort $ nub otherRegs)
    --Consensus bin size for each write site across all regions
    consensusBins :: [Bin]
    consensusBins = map (checkBin . mkFinalBin) accInfo
      where
        mkFinalBin :: AccessInfo -> Bin
        mkFinalBin acc = if map fst sitesBins == map fst sitesFreqs
                         then let avg = if freqSum == 0 then 0 else binByFreq `div` freqSum
                                  varRegions = map fst sitesBins
                                  binSize = let excess = avg `rem` tySize acc
                                            in if excess == 0
                                               then avg
                                               else avg + (tySize acc - excess)
                                  sizes = (binSize, binSize `div` tySize acc)
                              in Bin (site, siteTy acc) freqSum sizes varRegions
                         else error $ "Mismatched regions for memVar " ++ show site
          where
            site = memVar acc
            sitesBins = getSiteInfo site initBins
            sitesFreqs = getSiteInfo site $ 
                          map getSiteName freqs
            getNums = map (snd . snd)
            getSiteName (r,accs) = (r, map (first memVar) accs)
            binByFreq = sum $ zipWith (*) (getNums sitesBins)
                                          (getNums sitesFreqs)
            freqSum = sum $ getNums sitesFreqs

        --Get all info for a given site, each associated with the region
        --that generated it
        getSiteInfo site ls = map checkTup $ filter (not . null . snd) $ 
                              map filterSites ls
          where
            filterSites (r,info) = (r, filter ((==site) . fst) info)
            checkTup (r,[info]) = (r,info)
            checkTup (r,_) = error $ "Region " ++ show r ++ 
                                     "should have one field for memvar " ++ 
                                     show site

        --Make sure bin isn't too large
        checkBin b@(Bin (site,_) _ (binSize,_) _) = 
          case find ((==site) . memVar) accInfo of
            Just acc -> if memSize acc  >= binSize
                          then b
                          else error $ "Bin for site " ++ show site ++ " is too large"
            Nothing -> error $ "Bin created for nonexistent site " ++ show site

    --For each region, compute an initial bin size for each memory variable
    --accessed in that region.
    initBins :: [(Int,[(WriteSite,Int)])]
    initBins = map (second mkInitBin) freqs
    mkInitBin :: [(AccessInfo,Int)] -> [(WriteSite,Int)]
    mkInitBin vars = snd $ mapAccumL go maxOnChip vars
      where
        --accesses of each variable accessed more than once in this region 
        allAccesses = fromIntegral $ sum $ filter (>1) $ map snd vars
        --Given SRAM remaining and the next variable with the highest
        --access frequency in this region, perform an iteration of Dominguez's
        --initial bin calculation
        go :: Int -> (AccessInfo,Int) -> (Int, (WriteSite,Int))
        go ramRemaining (var,accs) = if accs <= 1
                                      then (ramRemaining, (name, 0))
                                      else (newRam, (name, binSize))
          where
            name = memVar var
            --fraction of SRAM allotted to this variable based on accesses
            sramFrac :: Double
            sramFrac = fromIntegral ramRemaining * 
                       (fromIntegral accs / allAccesses)
            --Revise size to never be larger than variable's total size.
            sizedBin = min (floor $ toRational sramFrac) (memSize var)
            --Revise bin size to be a multiple of the size of an object 
            --stored in the bin
            binSize = let excess = sizedBin `rem` tySize var
                      in if excess == 0
                          then sizedBin
                          else sizedBin + (tySize var - excess)
            --Update total RAM left for variables in this region
            newRam = ramRemaining - binSize

    --For each region, collect list of each variable accessed and its total
    --number of accesses in that region
    freqs :: [(Int, [(AccessInfo,Int)])]
    freqs = map mkTup readRegions
      where
        mkTup (regNum,readNums) = (regNum, sortBy freqComp $ 
                                           mapMaybe (mkFreq readNums) accInfo)
        freqComp (_,a) (_,b) = b `compare` a
        mkFreq readNums ainfo = 
          let readHere = filter ((`elem` readNums) . fst) $ accesses ainfo
              totalAccs = sum $ map snd readHere
          in if null readHere 
              then Nothing
              else Just (ainfo, totalAccs)
    --For each region, a list of all the read sites' IDs. We only consider reads
    --because a write is never an access to a pre-existing object (and we only
    --want to count reuse). 
    readRegions :: [(Int,[Int])]
    readRegions = let cleanRead = read . takeWhile isDigit . drop 5
                  in filter (not . null . snd) $ --only keep regions with reads
                     map (second (map cleanRead . 
                                  filter ("read_" `isPrefixOf`) . snd)) regions

-- Associate each memory address denoting the start of some bin with the list of
-- bins it could correspond to. We associate an address with a list of bins
-- because different bins could be allocated to this address in different
-- regions, if the bins have no regions in common. 
type AddrMap = Map.Map Int [Bin]
-- | A memory partition has a total size in bits, a type of object stored in
-- each slot, and a mapping of each address to the bin allocated there 
data Partition = Partition { partitionSize :: Int
                           , partitionType :: Ty
                           , allocated :: AddrMap
                           } 
-- Specialized show method for clearer debugging
instance Show Partition where
  show p = let allocs = allocated p in
           "Partition{ bits = " ++ show (partitionSize p) ++ 
           ", allocations = \n" ++"(" ++ 
           concat (Map.elems (Map.mapWithKey showBins allocs)) ++ ") } \n "
   where
     showBins addr binList = show addr ++ ", " ++ concatMap showB binList
     showB (Bin (site,_) accs (_,numObj) regs) = 
       "    Bin{ site: " ++ show site ++ ", accesses: " ++ show accs ++ 
       ", size (objects): " ++ show numObj ++ ", regs: " ++ show regs ++ "\n"
-- | Given a total amount of on-chip memory (in bytes) and a list of bins,
-- determine the partitions of on-chip memory for each memory variable type,
-- and return the partitions along with the size of any unallocated on-chip
-- memory.
mkPartitions :: Int -> [Bin] -> (Int, Map.Map Ty Partition)
mkPartitions maxSRAM allBins = foldl allocBin (maxSRAM, startPartitions) sorted
  where
    --This is how Dominguez et al. did things. Every heap bin is ordered together
    --by accesses and sorted in decreasing order of access frequency
    --sorted = reverse $ sortBy accComp allBins 
    --Here, I'm first grouping bins by type, then sorting each of those groups
    --by access frequency, then interleaving the resulting groups. This is an
    --attempt to diversify the on-chip memory across more types, instead of just
    --focusing on those types that are accessed most often.
    sorted = concatMap (sortBy accComp) $
             transpose $ map (sortBy accComp) $
             groupBy tyEq $ sortBy tyComp allBins
    --empty partition for each type
    startPartitions = let tys = nub $ map (\(Bin (_,t) _ _ _) -> t) allBins
                      in foldr (\t m -> Map.insert t 
                                        Partition{ partitionSize = 0
                                                 , partitionType = t
                                                 , allocated = Map.empty }
                                        m) Map.empty tys
    --The allocation algorithm for a given bin
    allocBin (sramRem, partitionMap) bin@(Bin (_,ty) _ (bitSize,objNum) regs) 
      --This bin is empty; don't allocate a partition for it
      | objNum == 0 = (sramRem, partitionMap)
      -- This bin's type has no memory allocated for it, and we have enough
      -- space in SRAM to spare for this new bin
      | not notEmpty && sramRem >= bitSize = 
          let newSize = bitSize
              newSRAM = sramRem - bitSize
              newAllocated = addBin (Map.insert 0)
          in (newSRAM, mkNewPart newSize newAllocated)
      -- The partition for this bin's type has an open chunk for the bin in the
      -- regions it's accessed.
      | notEmpty && maybe False fitsInPartition openAddr = 
          let newAlloc = addBin (Map.insertWith (++) (fromJust openAddr))
          in (sramRem, mkNewPart (partitionSize part) newAlloc)
      -- The last chunk in the partition is too small for this bin but has no
      -- conflicts and can be grown to store the new bin.
      | notEmpty && maybe False 
              ((sramRem >=) . (*(bitSize `div` objNum)) . getExcess) openAddr =
          let excessSlots = maybe (error "Excess Slots") getExcess openAddr
              objSize = bitSize `div` objNum
              newSize = partitionSize part + objSize * excessSlots 
              newSRAM = sramRem - (objSize * excessSlots)
              newAllocated = addBin (Map.insertWith (++) (fromJust openAddr))
          in (newSRAM, mkNewPart newSize newAllocated)
      -- There's no open chunk for this bin, but we can allocate more space
      -- to the partition.
      | notEmpty && isNothing openAddr && sramRem >= bitSize = 
          let newSize = partitionSize part + bitSize
              newSRAM = sramRem - bitSize
              --new address is after the maximum address of a conflicting bin
              newAddr = endAddr + getMaxConflicting endAddr
              newAllocated = addBin (Map.insert newAddr)
          in (newSRAM, mkNewPart newSize newAllocated)
      | otherwise = (sramRem, partitionMap)
      where
        --this partition
        part = fromMaybe partError $ Map.lookup ty partitionMap
        partError = error $ "No partition found for type " ++ show ty
        --the addressMap for this partition
        addrMap = allocated part
        --Check if the partition is not empty
        notEmpty = not (Map.null addrMap)
        --Check that placing this bin at a given address won't exceed
        --the number of slots currently allocated for the partition
        fitsInPartition addr = lastAllocatedSlot >= addr + (objNum - 1)
        --Highest address of this partition's memory 
        lastAllocatedSlot = endAddr + getMaxBinObj endAddr - 1
        --Highest address pointing to a bin set
        endAddr = last orderedAddrs
        --Calculate how many extra slots would be required in this partition
        --to place this bin at the given address
        getExcess addr = addr + objNum - lastAllocatedSlot - 1
        --check if a bin has no conflicting region sets with 
        --the current bin 
        noConflicts b = let set1 = Set.fromList (getRegions b)
                            set2 = Set.fromList regs
                        in Set.empty == Set.intersection set1 set2
        --helper for inserting a new bin into our map
        addBin insertion = insertion [bin] addrMap
        mkNewPart size alloc = let newPart = part{ partitionSize = size,
                                                   allocated = alloc }
                               in Map.insert ty newPart partitionMap
        openAddr :: Maybe Int
        openAddr = if notEmpty then findOpen 0 else Nothing
        --Return the first address that points to an open chunk of memory for
        --this bin that won't introduce any conflicts
        findOpen curAddr 
          --outside of partition
          | curAddr > lastAllocatedSlot = Nothing 
          --no allocated bins would have conflicts with this one if we 
          --place it at the current address
          | null (overlapAddrs curAddr) = Just curAddr
          --some bin would conflict with this one if placed at the current
          --address. Find the largest conflicting bin placed at the highest
          --address that our bin would've covered, and move the current 
          --address past that conflicting bin.
          | otherwise = let lastAddr = last $ overlapAddrs curAddr
                        in findOpen (lastAddr + getMaxConflicting lastAddr)
        -- return list of addresses of bin sets that this bin would
        -- conflict with if placed at given address
        overlapAddrs addr = Map.keys $ Map.filter hasConflict binSets
          where
           --only consider addresses this bin would cover
           potential = takeWhile (<= addr + objNum - 1) $
                       dropWhile (< addr) orderedAddrs 
           -- all bin sets that this bin could cover if placed at addr
           binSets = Map.filterWithKey (\a _ -> a `elem` potential) addrMap
           -- check if any bin in a set has conflicts with this one
           hasConflict = any (not . noConflicts)
        
        --List of addresses for this partition in ascending order
        orderedAddrs =  sort $ Map.keys addrMap 
        --helpers for inspecting bins at given addresses
        getMaxConflicting addr = maximum $ map getNumObj $ 
                                filter (not . noConflicts) $ lookupBins addr
        getMaxBinObj addr = maximum $ map getNumObj $ lookupBins addr
        lookupBins addr = fromMaybe binErr $ Map.lookup addr addrMap
          where binErr = error $ "Couldn't find bins with address " 
                               ++ show addr ++ " in partition for type " 
                               ++ show ty

        getRegions (Bin _ _ _ rs) = rs
        getNumObj (Bin _ _ (_,numObj) _) = numObj
      

    

    
-- | Collect any variables of a type found in the argument list. 
collectTypedVars :: [Ty] -> Vdef -> (Var, [Var])
collectTypedVars tys (Vdef (_, n) t ex) = (n, addMain $ nub $ go ex)
  where
    go (Case e _ _ alts) = mappend (go e) (concatMap goAlt alts)
    go (Lam _ e) = go e
    go (Let vds e) = mappend (go e) (concatMap collectVdef vds)
    go (App e1 e2) = mappend (go e1) (go e2)
    go (Appt e _) = go e 
    go (Var (_,var) ty) = [ var |  ty `elem` tys ]
    go _ = []

    collectVdef (Vdef (_,n') t' e') = let rec = go e' in
                                      if t' `elem` tys then n' : rec else rec

    goAlt (Adefault e) = go e
    goAlt (Alit _ e)   =  go e
    goAlt (Acon _ _ vbs e) = [ var | (var,t') <- vbs, t' `elem` tys] ++ go e

    addMain = if n == "main" && t `elem` tys then ("main":) else id

-- | Collect all Pointer_* types and any non-recursive types (i.e. types T that
--   do not have a corresponding type Pointer_T) containing Pointer types as
--   fields (either directly or indirectly via another type). These types comprise
--   the first element of the returned tuple; the second element cnotains all 
--   the other types (i.e. those that have no connection to memory whatsoever).
findPtrTdefs :: [Tdef] -> ([Ty],[Ty])
findPtrTdefs tdefs = (Set.toList $ go $ Set.fromList $ map tdefToTy ptrTys 
                     ,map tdefToTy rTys)
  where
    go memTys = let newTys = Set.foldr findTys memTys nonRecSet
                in if newTys == memTys
                    then newTys
                    else go newTys

    findTys :: Tdef -> Set.Set Ty -> Set.Set Ty
    findTys tdef s = let fields = concatMap constrTypes $ tdefConstrs tdef
                     in if any (`Set.member` s) fields
                       then Set.insert (tdefToTy tdef) s
                       else s

    nonRecSet = Set.fromList nonRecTys 
    (rTys,nonRecTys) = partition ((`elem` map tdefName ptrTys) . 
                                    ("Pointer_"++) . tdefName) tdefs
    ptrTys = filter (("Pointer" `isPrefixOf`) . tdefName) tdefs
tyEq :: Bin -> Bin -> Bool
tyEq (Bin (_,a) _ _ _) (Bin (_,b) _  _ _) = b == a
-- | Comparing two bins by their type of accesses
tyComp :: Bin -> Bin -> Ordering
tyComp (Bin (_,a) _ _ _) (Bin (_,b) _  _ _) = b `compare` a
-- | Comparing two bins by their number of accesses
accComp :: Bin -> Bin -> Ordering
accComp (Bin _ a _ _) (Bin _ b _ _) = b `compare` a
