module Main where

power :: Integer -> Integer
power x = x * x

result = power( sum [1..100] ) - sum( map(\x -> x * x) [1..100] )
main :: IO()
main = do
    print(result)
