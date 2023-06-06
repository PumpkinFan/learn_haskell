main = do   
    line <- getLine  
    if null line  
        then return ()  
        else do  
            putStrLn $ reverseWords line  
            main  
  
reverseWords :: String -> String  
reverseWords = unwords . map reverse . words  

-- pro-tip: use `runhaskell` command to execute programs on the fly

-- return in haskell is a little different than imperative languages
-- kind of like the opposite of `<-`, it packs a "pure" value into an IO action