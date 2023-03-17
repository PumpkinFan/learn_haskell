-- create data type to represent a person
-- first, middle, and last name, age, height (in cm), phone number, and fav ice-cream flavor
{- data Person = Person String String String Int Float String String deriving (Show) -}

-- if we wanted to write "getter" functions
{- 
fistName :: Person -> String
firstName (Person fn _ _ _ _ _) = fn 
lastName :: Person -> String  
lastName (Person _ ln _ _ _ _) = ln  
...
-}
 

-- a better way! (record syntax)
data Person = Person {
                    firstName :: String,
                    middleName :: String,
                    lastName :: String,
                    age :: Int,
                    height :: Float,
                    phoneNumber :: String,
                    iceCreamFlav :: String
                    } deriving (Show)

-- using keyword-argument-like syntax for data construction with records                    
data Car = Car {company :: String, model :: String, year :: Int} deriving (Show)  
car1 = Car {company="Cadillac", model="Seville", year=1999}  
car2 = Car {year=2017, company="Toyota", model="PriusC"}

