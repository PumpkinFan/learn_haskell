-- ranges for numbers and characters
numRange = [1..10]
charRange = ['A'..'F']


-- specifying the space between elements
evenRange = [2,4..30]
downRange = [20,17..1]

-- create infinite sized lists!
infRange = [1,2..]
-- cool example: get first 24 multiples of 13
multiples13 = take 24 [13,26..]

-- functions that create infinite lists
cycleEx = take 10 (cycle [1,2,3])
repeatEx = take 10 (repeat 5)