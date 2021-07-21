module MyList where

data MyList = Nil | Cons Int MyList

myLength :: MyList -> Int
myLength Nil = 0
myLength (Cons _ xs) = 1 +  (myLength xs)

main :: Int
main = (myLength (Cons 22 (Cons 33 (Cons 42 (Cons 42 Nil)))))
