{- 
Implements sets (like those from math).
All elements are unique. Internally implemented with trees (like `Data.Map` `maps`).
This means elements are ordered (and therefore must be orderable), but also means inserting,
checking for membership, and other operations are faster than working with lists.
-}

import qualified Data.Set as Set

text1 = "I have a bad case of diarrhea"
text2 = "I sawed this boat in half!"
set1 = Set.fromList text1
set2 = Set.fromList text2

onlyInSet1 = Set.difference set1 set2
onlyInSet2 = Set.difference set2 set1
-- there's also Set.intersection and Set.union that work as expected

-- Sets are often used to weed out duplicate elements from a list then 
-- cast back to a list with Set.toList.
-- This same thing is done by `Data.List.nub` but converting to and from a set
-- is often faster than using the `nub` function.
