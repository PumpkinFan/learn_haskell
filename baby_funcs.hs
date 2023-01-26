import Data.List
import System.IO

doubleMe x = x + x
-- doubleUs x y = x*2 + y*2
doubleUs x y = doubleMe x + doubleMe y


-- conditional
doubleSmallNum x = if x > 100
                    then x
                    else x * 2  -- in haskell `else` is mandatory

doubleSmallNum' x = (if x > 100 then x else x*2) + 1
-- note in haskell single quote (') is a valid character for function names
-- it is usually used to denote a strict version or slightly modified version of a function

-- functions with no parameters are called definitions (or names)
conanO'Brien = "It is I, the man named Conan O'Brien."

-- function type declarations
-- first three `Int`s are the parameters, last value is return type
addThree :: Int -> Int -> Int -> Int
addThree x y z = x + y + z
-- type variables
thd :: (a, b, c) -> c  -- a,b,c can each by of any type
thd (_, _, c) = c
