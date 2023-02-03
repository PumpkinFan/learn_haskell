{-
The `$` function (a.k.a. function application)
Defined as:
($) :: (a -> b) -> a -> b
e.g. `f $ x = f x`

Seems useless, but differs from normal function application using a space
in a key way.
Application with a space has really high precedence, while application with 
`$` has the lowest precedence.
-}

-- Mostly used to avoid excess parentheses
-- These are equivalent:
longSumSqrt = sum (map sqrt [1..100])
shortSumSqrt = sum $ map sqrt [1..100]

-- other than removing parentheses `$` is like any other function
funcAppMapped = map ($ 3) [(4+), (*10), sqrt]