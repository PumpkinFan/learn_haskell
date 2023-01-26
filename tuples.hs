{-
A lot like Python tuples (same syntax). 
Each size of tuple is its own `type`.
-}

-- errList = [(1, 2), (8, 7, 3), (0, 4)]
validList = [(1, 2), (8, 7), (0, 4)]

-- tuple of size two is called a pair and is its own data type
pairFirst = fst (0,5)
pairSecond = snd (0,5)

-- zip function
zipEx = zip [0..5] [0,2..10]
-- because of lazy haskell we can zip with infinite lists
fruit = ["apple", "banana", "blueberry", "durian", "canteloupe"]
numFruit = zip [1..] fruit