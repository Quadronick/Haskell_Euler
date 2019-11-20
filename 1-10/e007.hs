module Main where

primes :: [Int]
primes = filterPrime [2..]
  where filterPrime (p:xs) = p : filterPrime [x | x <- xs, x `mod` p /= 0]

result = primes !! 10000

main :: IO()
main = print result
