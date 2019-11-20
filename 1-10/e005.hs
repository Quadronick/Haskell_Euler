module Main where

primes :: Integral a => a -> a -> [a]
primes a b = takeWhile (<= b) $ dropWhile (< a) $ sieve [2..]
  where sieve (n:ns) = n:sieve [ m | m <- ns, m `mod` n /= 0 ]

ylimit :: Int -> Int
ylimit x = round( logBase (fromIntegral x) 20)

result = product [ x | x <- primes 1 20, y <- [1..ylimit x], x ^ y < 20]

main :: IO()
main = print result
