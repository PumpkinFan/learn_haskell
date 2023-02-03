{-
Function composition
(.) :: (b -> c) -> (a -> b) -> a -> c  
f . g = \x -> f (g x)
Basically another good way to remove parentheses
-}

-- take absolute value of elems in list then negate
withoutFuncComp = map (\x -> negate (abs x))
withFuncComp = map (negate . abs)

-- right associative 
-- (f . g . h) x = (f (g (h x)))

-- plays well with `$`
-- these are equivalent:
-- replicate 100 (product (map (*3) (zipWith max [1,2,3,4,5] [4,5,6,7,8])))
-- replicate 100 . product . map (*3) . zipWith max [1,2,3,4,5] $ [4,5,6,7,8]

{-
Composition is not the preferred way to write code for readibility.
Instead using `let` statements is better for intermediary results.
-}

