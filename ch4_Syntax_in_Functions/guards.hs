{-
If a guard statement evaluates to True then the corresponding
function body will be used.
Often the last guard statement is `otherwise`. In haskell `otherwise` 
is defined as True.
-}

import Data.Time.Clock
import Data.Time.Calendar

currentDate :: IO (Integer,Int,Int) -- :: (year,month,day)
currentDate = getCurrentTime >>= return . toGregorian . utctDay

checkDrinkingAge :: (RealFloat a) => a -> String
checkDrinkingAge age 
    | age < 18 = "nope!"
    | age < 21 = "not in 'murica!"
    | otherwise = "okay!"

newCompare :: (Ord a) => a -> a -> Ordering
a `newCompare` b  -- we can define functions infix using backticks
    | a > b = GT 
    | a == b = EQ
    | otherwise = LT


-- using `where`
initials :: String -> String ->  String
initials firstname lastname = [f] ++ ". " ++ [l] ++ "."
    where (f, l) = (head firstname, head lastname)
 


-- function to return age in years (always rounded down)
-- ageFromDOB :: (Integral a) => (a, a, a) -> a
-- ageFromDOB (year, month, day)
--     | 


-- checkDrinkingDOB :: (Integral a) => (a, a, a) -> String
-- checkDrinkingDOB (year, month, day)
--     | age < 18 = "nope!"
--     | age < 21 = "not in 'murica!"
--     | otherwise = "okay!"
--     where age = ageFromDOB (year, month, day)