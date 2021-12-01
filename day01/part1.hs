module Main where

main = interact $ (++ "\n") . show
                . length
                . filter (uncurry (<))
                . pairs
                . (map read :: [String] -> [Int])
                . lines
  where pairs lst = zip (init lst) (tail lst)
