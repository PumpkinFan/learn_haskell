-- filters input text to remove lines with length >10
main = interact $ unlines . filter ((<10) . length) . lines  
