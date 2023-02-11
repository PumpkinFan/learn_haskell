{-
Modules are collections of related functions, types, and typeclasses.
Pretty much the same as modules in Python (or any other language).

All functions, types, etc. so far have been from `Prelude` module
which is imported by default.
-}

-- example import (note imports must be done before defining any functions)
import Data.List

-- special imports
import Data.List (nub, sort) -- only import nub and sort
import Data.List hiding (sort) -- import everything except for sort

-- qualified imports -> more like Python's `import` statements
import qualified Data.Map -- must use Data.Map._ to call functions 
import qualified Data.Map as M -- can use M monocker instead

numUniques :: (Eq a) => [a] -> Int
numUniques = length . nub

-- `nub` is defined in `Data.List`
-- it returns a list of all the unique elements in the argument

-- can also import into ghci global namespace with `:m + Data.List`


