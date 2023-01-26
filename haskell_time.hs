-- This is a comment
{- This is a multiline
comment -}

import Data.List
import System.IO


-- Different data types

-- Int  (short for Integral?)
maxInt = maxBound :: Int  -- 2^63

-- Integer (unbounded whole number)
-- Float (single precision)
-- Double (11pt precision)
bigFloat = 3.999999999999 + 0.000000000005  -- roundoff error
-- other types: Bool, Char, Tuple

-- doing math
sumOfNums = sum [1..100]
addEx = 5 + 4
subEx = 5 - 4
multEx = 5 * 4
divEx = 5 / 4

modEx = mod 5 4  -- prefix operator
modEx2 = 5 `mod` 4  -- infix operator

number9 = 9 :: Int
sqrtOf9 = sqrt (fromIntegral number9)

-- testing equality
eqEx = 1 == 2
notEqEx = 1 /= 2