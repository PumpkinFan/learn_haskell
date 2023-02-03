{- Simple script to get all primes up to a specified number.
Doing this to test my early knowledge of haskell. -}

modUpTo :: Int -> [Int]
modUpTo x = [x `mod` a | a <- [2..(x-1)]]
isPrime :: Int -> Bool
isPrime 1 = False
isPrime x = null [a | a <- modUpTo x, a == 0]
getPrimes :: Int -> [Int]
getPrimes n = [x | x <- [1..n], isPrime x]
