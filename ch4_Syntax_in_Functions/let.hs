{-
Using `let <bindings> in <expression>`
-}

-- 9 will be plugged into expression a + 1
letEx = 4 * (let a = 9 in a + 1) + 2  

-- we can use `let` almost anywhere!
letListEx = [let square x = x * x in (square 5, square 2, square 7)]

