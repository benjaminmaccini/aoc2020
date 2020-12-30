module Main where

import System.IO

main = do
  print (part1 "day4/day4.txt")

-- Read in a file, parse, validate and return the number of valid passports
part1 :: String -> Int
part1 fp = count
  contents <- readFile fp
  let passports = lines contents
  where
    count 


-- Split a list at the first occurence of a key
splitWhen :: String -> [String] -> ([String], [String])
splitWhen key input = splitAt (search l 0) l
  where
    -- Search for the first occurrence of a String and return the index
    search l i
      | (head l) == key = i
      | otherwise = search (tail l) (i+1)

-- Take in a String representation of a passport and return 1 if valid 0 if not
-- We return an Int to avoid type issues when summing
isValid :: String -> Int
isValid passport = validPassports
  byrRegex = 

