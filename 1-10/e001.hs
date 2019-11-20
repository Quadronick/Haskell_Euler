module Main where

result :: Integer -> Integer
result x = sum [ x | x <- [1..999], x `rem` 5 == 0, x `rem` 3 == 0 ]

main :: IO()
main = print (result 1000)
