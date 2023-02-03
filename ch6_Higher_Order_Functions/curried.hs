{-
Haskell functions can take functions as parameters and return functions as output.
If a function does either it is called a `Higher Order Function`.
-}

{-
Curried functions (named after the OG Haskell Curry)
All multiparameter functions so far are curried functions.
Use initial parameter to create a new function which is applied
to subsequent parameters. 
-}

-- example using `max`
curriedEx = max 4 5
curriedEx' = (max 4) 5
-- both expressions are equivalent
{- (max 4) creates a function which takes one parameter and returns
either 4 or the input parameter, depending on which is bigger -}

-- now we can create `partially applied` functions
compareWithHundred = compare 100
multWithFour :: (Num a) => a -> a
multWithFour = (4 *)  -- use parantheses for infix functions

{-
note: there is no good repr for functions in terminal/GHCI
because functions are not part of the `Show` typeclass
-}

-- demonstration with lambda functions
-- these expressions are equivalent:
addThree :: (Num a) => a -> a -> a -> a
addThree x y z = x + y + z
addThree' = \x -> \y -> \z -> x + y + z

