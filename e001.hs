module Main where

fun :: Integer -> Integer
fun x = sum [ x | x <- [1..999], x `rem` 5 == 0, x `rem` 3 == 0 ]

main :: IO()
main = do
  print(fun 1000)
