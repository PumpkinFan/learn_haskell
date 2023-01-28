-- reimplementing zipWith using partial application
zipWith' :: (a -> b -> c) -> [a] -> [b] -> [c] -- first param is function that takes (a, b) and returns c
zipWith' _ [] _ = []
zipWith' _ _ [] = []
zipWith' f (x:xs) (y:ys) = f x y : zipWith' f xs ys

-- using filter with lambdas
-- get all even multiples of 3 up to 100
evenThreeven = filter (\x -> even x && x `mod` 3 == 0) [1..100]

-- quicksort again!
quicksort :: (Ord a) => [a] -> [a]
quicksort [] = []
quicksort (x:xs) = 
    let smaller = filter (<= x) xs
        bigger = filter (> x) xs
    in quicksort smaller ++ [x] ++ quicksort bigger

-- Collatz sequences
chain :: (Integral a) => a -> [a]
chain 1 = [1]
chain x
    | even x = x : chain (x `div` 2)
    | odd x = x : chain ((x * 3) + 1)

-- for all numbers between 1 and 100 how many have chain lengths >15
chainEx = length (filter (\x -> length x > 15) (map chain [1..100]))
-- recall for historical reasons `length` returns type Int 
