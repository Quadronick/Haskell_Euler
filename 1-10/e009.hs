module Main where

result = (\[(x,y,z)] -> x * y * z) [ (a,b,c) | a <- [1..500], b <- [1..a], let c = 1000 - a -b, a^2 + b^2 == c^2 ]

main :: IO()
main = print result
