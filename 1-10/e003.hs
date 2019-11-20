module Main where

primes :: Integral a => a -> a -> [a]
primes a b = takeWhile (<= b) $ dropWhile (< a) $ sieve [2..]
  where sieve (n:ns) = n:sieve [ m | m <- ns, m `mod` n /= 0 ]

result = [ x | x <- primes 1 600851475143, 600851475143 `mod` x == 0 ]

main :: IO()
main = print (last result)
