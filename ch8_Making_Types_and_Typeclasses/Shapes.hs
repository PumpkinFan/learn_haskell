-- use `data` keyword to denote a new data type!
-- types can be exported with modules!
module Shapes (
    -- the `(..)` notation exports all value constructors
    -- this is not necessary! we can have "private" value constructors
    Point(..),
    Shape(..),
    area, 
    nudge
) where

-- data Shape = Circle Float Float Float | Rectangle Float Float Float Float
-- Circle and Rectangle are `value constructors`
-- value constructors (like all things) are ultimately functions 
-- that return the data type

-- common to use same name as data type when there is only one value constructor
data Point = Point Float Float deriving (Show) 

-- using `deriving` so we can print a Shape 
data Shape = Circle Point Float | Rectangle Point Point deriving (Show)


-- note: something like Circle -> Float would not work because Circle is not a data type
area :: Shape -> Float
-- area (Circle _ _ r) = pi * r**2
-- area (Rectangle x1 y1 x2 y2) = (abs $ x2 - x1) * (abs $ y2 - y1)
area (Circle _ r) = pi * r**2
area (Rectangle (Point x1 y1) (Point x2 y2)) = (abs $ x2 - x1) * (abs $ y2 - y1)

nudge :: Shape -> Float -> Float -> Shape
nudge (Circle (Point x y) r) dx dy = Circle (Point (x + dx) (y + dy)) r
nudge (Rectangle (Point x1 y1) (Point x2 y2)) dx dy = Rectangle (Point (x1+dx) (y1+dy)) (Point (x2+dx) (y2+dy))