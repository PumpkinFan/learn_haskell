-- example of using `deriving Eq` on a Person datatype
data Person = Person {
    fistName :: String,
    lastName :: String,
    age :: Int
} deriving (Eq, Show)
-- now if we do something like person1 == person2 it will evaluate
-- if all the fields for each Person are equal