main = do  
    putStrLn "Hello, what's your name?"  
    name <- getLine  
    putStrLn ("Hey " ++ name ++ ", you rock!")  

-- do combines several IO actions one
-- reads like imperative programs
-- by convention there is no type signature for `main`

-- the `<-` syntax fetches the value from the `getLine` IO action 
-- the data from `getLine` can only be fetched while we are still in an IO action
-- this is how Haskell separates "pure" and "impure" code 
-- once the data is take from getLine it is "pure", so `name` can be used like a normal String