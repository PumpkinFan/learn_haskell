import qualified Data.Map as Map
-- "Association lists" aka dictionaries
-- lists used to store key-value pairs

-- Implementing using list of 2-element tuples (pairs)
phoneBook = [("Harrison", "867-5309")
            ,("Elliot", "444-4444")
            ,("Harry", "716-0420")
            ,("Charlie", "997-1337")]

-- findKey :: (Eq k) => k -> [(k,v)] -> v
findKey key xs = snd . head . filter (\ (k,v) -> key == k) $ xs

-- Using `Maybe` and recursion
findKey' :: (Eq k) => k -> [(k,v)] -> Maybe v
findKey' key [] = Nothing
findKey' key ((k,v): xs) = if key == k
                            then Just v
                            else findKey' key xs

-- even better with fold
findKey'' :: (Eq k) => k -> [(k,v)] -> Maybe v
findKey'' key xs = foldl (\ acc (k,v) -> if k == key then Just v else acc) Nothing xs

-- using association lists / maps implemented in Data.Map
phoneBook' = Map.fromList [("Harrison", "867-5309")
                          ,("Elliot", "444-4444")
                          ,("Harry", "716-0420")
                          ,("Charlie", "997-1337")]
-- notice in type signature it is necessary for keys to be orderable for Data.Map
-- this is because module arranges maps into a tree structure
-- Map.fromList :: (Ord k) => [(k, v)] -> Map.Map k v 