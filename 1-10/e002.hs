module Main where

fib :: [Integer]
fib = 1 : 1 : zipWith (+) fib (tail fib)

list = sum(takeWhile (< 4000000) [ n | n <-fib, even n])

main :: IO()
main = print list
