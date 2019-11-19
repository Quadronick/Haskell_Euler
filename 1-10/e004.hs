module Main where

foo = [x * y | x <- [100..999], y <- [100..999]]
result = [ x | x <- foo, show x == reverse(show x)]

main :: IO()
main = do
  print(maximum result)
