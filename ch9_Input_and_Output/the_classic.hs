main = putStrLn "hello world!"

{-
note the type for `putStrLn`
ghci> :t putStrLn  
putStrLn :: String -> IO () 

takes a string and returns an IO action, with result type of ()
"()" is an empty tuple, also called a unit

the idea is that IO actions do some side-effecty action and also contain a return value
for printing there is no meaningful return value so the dummy () is used instead
-}