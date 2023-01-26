import Data.List
import System.IO

{-  
Lists in haskell are singly linked. Elements can only be added to the front of a list.
All elements of a haskell list must be the same data type.
-}

primeNumbers = [3, 5, 7, 11, 13]

morePrimes = primeNumbers ++ [17, 19, 23]  -- concatentation

favNums = 2 : 7 : 21 : []  -- combine numbers into a list

listCeption = [[2, 3, 5], [7, 11, 13]]

evenMorePrimes = 2 : morePrimes

lenPrimes = length evenMorePrimes

revPrime = reverse evenMorePrimes

isListEmpty = null evenMorePrimes

secondPrime = evenMorePrimes !! 1  -- get element at index 1

firstPrime = head evenMorePrimes

lastPrime = last evenMorePrimes

primeInit = init evenMorePrimes  -- all but the last element

first4Primes = take 4 evenMorePrimes

-- strings are just lists of characters!
helloWorld = "hello" ++ " " ++ ['w', 'o', 'r', 'l', 'd']


-- List comprehension
compList = [x**2 | x <- [1..10]]  -- contains squares of numbers 1 to 10
-- filtering a list
filtList = [x**2 | x <- [1..10], x**2 > 50]  -- `x**2 > 50` is called a "predicate"
filtList' = [x | x <- [1,3..101], x /= 15, x /= 19]  -- multiple predicates

-- comprehended from multiple lists
multCompEx = [ x*y | x <- [2,5,10], y <- [8,10,11]]  -- will apply func to every combination from input lists
-- we can do the `_` thing
length' xs = sum [1 | _ <- xs]
-- nesting comprehensions
manyNums = [[1..9], [6,8..42], [0..4]]
nestList = [[x | x <- nums, odd x] | nums <- manyNums]