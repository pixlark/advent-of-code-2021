module Main where

import Data.List (tails)

main = interact $ (++ "\n") . show
                . length
                . filter (uncurry (<))
                . pairs
                . map (foldl (+) 0)
                . windows 3
                . (map read :: [String] -> [Int])
                . lines
  where pairs lst = zip (init lst) (tail lst)
        windows n = takeWhile ((== n) . length) . map (take n) . tails
