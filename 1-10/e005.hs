module Main where

primes :: Integral a => a -> a -> [a]
primes a b = takeWhile (<= b) $ dropWhile (< a) $ sieve [2..]
  where sieve (n:ns) = n:sieve [ m | m <- ns, m `mod` n /= 0 ]



result = foldr (*) 1 [ x | x <- primes 1 20, y <- [1..truncate(logBase x 20)], x ^ y < 20]

main :: IO()
main = do
  print(result)
