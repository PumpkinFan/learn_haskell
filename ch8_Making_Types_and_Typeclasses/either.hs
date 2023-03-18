{-
The `Either` keyword can be a useful type constructor when we expect
more than one potential return type.
-}

-- silly example (also using type synonyms)
type DivideError = String
sillyDivide :: (Eq a, Fractional a) => a -> a -> Either a DivideError
sillyDivide numerator denominator
    | denominator == 0 = Right "error, cannot divide by zero"
    | otherwise = Left (numerator / denominator)