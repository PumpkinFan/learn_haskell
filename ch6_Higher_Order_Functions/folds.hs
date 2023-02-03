{-
Folds reduce a list into a singular value.
Folds take three arguments. A binary function, a starting value (the accumulator),
and the list to fold up.
The binary function is applied to accumulator and the first (or last) element of the list.
This generates a new accumulator which is used as input into the binary function and the next
element. And so on...
-}

-- fold left->right (`foldl`)
sum' :: (Num a) => [a] -> a
sum' xs = foldl (\ acc x -> acc + x) 0 xs

-- even better
sum'' :: (Num a) => [a] -> a
sum'' = foldl (+) 0 -- we can remove xs b/c of foldl return type

-- if fold is given an empty list it will return the starting accumulator value
sumEmpty = foldl (+) 0 []  -- returns 0

-- `foldr` fold right->left, also swaps input positions for x and acc
-- it kinda "makes sense" since right fold has accumulator on the right ¯\_(ツ)_/¯ 
map' :: (a -> b) -> [a] -> [b]
map' f = foldr (\ x acc -> f x : acc) [] 

{-
Generally `foldl` is equivalent to `foldr` with input list reversed.
One key difference: foldr will work on infinite lists while foldl will not.
This is because folding left->right will never reach the end of an infinite list.
-}

{-
foldl1 and foldr1 are equivalent to foldl and foldr except they don't require a starting
value input. They automatically assume the first/last element to be starting value. 
-}

-- scanl and scanr are like folds but return intermediate values of acc in a list
partialSums = scanl1 (+)
reverseStepByStep = scanl (flip (:)) []

-- How many elements for the sum of the roots of all natural numbers to exceed 1000?
howManyElems n = length (takeWhile (<n) (partialSums (map sqrt [1..]))) + 1