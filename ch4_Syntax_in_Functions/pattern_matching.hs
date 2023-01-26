{-
When defining functions different bodies can be used
for different input patterns.
-}

meaning :: (Integral a) => a -> String
meaning 42 = ":O"
meaning x = "wow epic fail"

{- 
input will try to match with patterns in the order 
they are written
-}

-- only returns "Not between 1 and 5" when x is not in [1,2,3,4,5]
saySmall :: (Integral a) => a -> String
saySmall 1 = "One!"  
saySmall 2 = "Two!"  
saySmall 3 = "Three!"  
saySmall 4 = "Four!"  
saySmall 5 = "Five!"  
saySmall x = "Not between 1 and 5" 

-- this will always return "Not between 1 and 5"
saySmallFail :: (Integral a) => a -> String
saySmallFail x = "Not between 1 and 5" 
saySmallFail 1 = "One!"  
saySmallFail 2 = "Two!"  
saySmallFail 3 = "Three!"  
saySmallFail 4 = "Four!"  
saySmallFail 5 = "Five!"  

-- Using recursion
factorial :: (Integral a) => a -> a
factorial 0 = 1
factorial n = n * factorial (n - 1)

-- When pattern matching fails
initials :: Char -> String
initials 'e' = "Elliot"
initials 'c' = "Charles"
initials 'm' = "Morgan"

-- pattern matching with tuples
add2DVec :: (Num a) => (a, a) -> (a, a) -> (a, a)
add2DVec (x1, y1) (x2, y2) = (x1 + x2, y1 + y2)

-- head:tail notation can be used to pattern match lists
head' :: [a] -> a
head' [] = error "no head for empty list"
head' (x:_) = x

tail' :: [a] -> [a]
tail' [] = error "no tail for empty list"
tail' (_:xs) = xs

-- more recursion
product' :: (Num a) => [a] -> a
product' [] = 1
product' (x:xs) = x * product' xs
