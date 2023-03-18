{-
Type synonyms can be used to give types a more specific name in order
to make code more clear. 
-}

-- example 
-- w/out type synonyms:
phoneBook :: [(String, String)]
-- with type synonyms:
type PhoneNumber = String
type Name = String
type PhoneBook = [(Name, PhoneNumber)]


