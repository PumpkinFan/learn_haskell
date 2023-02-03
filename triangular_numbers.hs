{-
Attempting problem 12 from Project Euler (https://projecteuler.net/problem=12)
Works, but is very slow. Took several hours to calculate `overNDivisors 500`. 
-}

nthTriangularNum :: (Integral a) => Int -> a
nthTriangularNum n = sum (take n [1..])

getDivisors :: (Integral a) => a -> [a]
getDivisors x = [y | y <- [1..(x `div` 2)], x `mod` y == 0] ++ [x]

numOfDivisors :: (Integral a) => a -> Int
numOfDivisors x = length (getDivisors x)

overNDivisors :: Int -> Int
overNDivisors n = head (filter (\x -> numOfDivisors x > n) (map nthTriangularNum [1..]))

main = putStrLn (show (overNDivisors 500))
