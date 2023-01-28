{-
Folds reduce a list into a singular value.
Folds take three arguments. A binary function, a starting value (the accumulator),
and the list to fold up.
The binary function is applied to accumulator and the first (or last) of the list.
This generates a new accumulator which is used as input into the binary function and the next
element. And so on...
-}

-- fold left->right (`foldl`)
sum' :: (Num a) => [a] -> a
sum' xs = foldl (\ acc x -> acc + x) 0 xs
