module Main where

import Data.Char
import Data.List
import System.IO
import Numeric

main = do
  content <- readFile "day5/day5.txt"
  let passes = lines content
      seats = map seat passes
      seatVals = map seatVal seats
  
  -- Part 1
  print $ maximum seatVals

  -- Find the missing seats, remove the first 99 sequential seats
  let allSeats = [(r,c) | r <- [0 .. 127], c <- [0 .. 7]]
      missingSeat = head $ drop 99 $ allSeats \\ seats

  -- Part 2
  print $ seatVal missingSeat

-- Find the row and column of the seat based on the input
seat :: String -> (Int, Int)
seat pass = (r, c)
  where
    r = binSearch (fst (splitAt 7 pass)) 'F' 127 0
    c = binSearch (snd (splitAt 7 pass)) 'L' 7 0

-- Binary search a range using a key to determine the lower partition
binSearch :: String -> Char -> Int -> Int -> Int
binSearch s key top bottom
  | s == "" = top
  | ((head s) == key) = binSearch (tail s) key ((top + bottom) `div` 2) bottom
  | otherwise = binSearch (tail s) key top ((top + bottom) `div` 2 + 1)

seatVal :: (Int, Int) -> Int
seatVal (r, c) = r * 8 + c

