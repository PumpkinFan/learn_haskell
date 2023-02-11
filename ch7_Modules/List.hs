import Data.List

-- all about lists!

-- `foldl'` and `foldl'` are stricter versions (less lazy) than Prelude implementation
-- use these if getting stack overflows on large lists

-- `and` & `or`
-- `and` checks that all elements in boolean list are true
andEx1 = and $ map (>4) [5,6,7,8] -- returns True
andEx2 = and $ map (==4) [4,4,4,1] -- returns False
-- `or` checks that any elements in boolean list are true
orEx1 = or $ map (==4) [1..10] -- returns True
orEx2 = or $ map (<4) [1..10] -- returns False

--`all` and `any`
-- `all` checks that all elements in list satisfy predicate function
allEx = all (==4) [4,4,4,4,4,4,4] -- returns True
-- `any` checks that any elements in list satisfy predicate function
anyEx = any (`elem` ['A'..'Z']) "SpongeBob" -- returns True

-- `find` -> returns first element to satisfy predicate
-- first occurence of `Maybe` in text
-- find :: (a -> Bool) -> [a] -> Maybe a  
-- `Maybe`s are a bit like lists in that they can be empty (i.e. `Nothing`)
-- but they may contain a single value (e.g. `Just _`) 
findEx1 = find (>4) [1,3,2,1,3,1,1,5,9] -- returns `Just 5`
findEx2 = find (>100) [1..6] -- returns `Nothing`
