module Main where

primes :: Integer -> [Integer]
primes a = takeWhile ( < a ) $ filterPrime [2..]
  where filterPrime (p:xs) = p : filterPrime [ x | x <- xs, x `mod` p /= 0 ]

result = primes 2000000

main = print (sum result)
