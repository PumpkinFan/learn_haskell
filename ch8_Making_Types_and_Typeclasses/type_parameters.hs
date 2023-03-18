-- Type constructors are like functions that take types as parameters
-- useful when designing a "box"-like data type

-- bad use of type constructors:
data Car = Car { make :: String
                , model :: String
                , year :: Int
                } deriving (Show)

data Car' a b c = Car' { make' :: a
                      , model' :: b
                      , year' :: c
                      } deriving (Show)
-- here there is no real benefit to Car' since we would define Car
-- related functions to work on (String, String, Int) anyway

-- good example using 3D vector type
data Vector a = Vector a a a deriving (Show)  
  
vplus :: (Num t) => Vector t -> Vector t -> Vector t  
(Vector i j k) `vplus` (Vector l m n) = Vector (i+l) (j+m) (k+n)  
  
scalarMult :: (Num t) => Vector t -> t -> Vector t  
(Vector i j k) `scalarMult` m = Vector (i*m) (j*m) (k*m)  
  
dotProd :: (Num t) => Vector t -> Vector t -> t  
(Vector i j k) `dotProd` (Vector l m n) = i*l + j*m + k*n  

-- notice typeclass constraints, i.e. (Num t), are included in function declarations
-- but NOT included in the data type declaration
-- this is a strong convention in Haskell since there is little benefit in adding 
-- constraints to data type declarations 