module MyReverse where

myReverse :: [Int] -> [Int] 
myReverse [] = []
myReverse (x:xs) = (myReverse xs) ++ [x]


main :: [Int]
main = myReverse [1,2,3,4,5,6]


-- works fine