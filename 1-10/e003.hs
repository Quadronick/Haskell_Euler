module Main where

primeach :: Integral a => a -> a -> [a]
primeach a b = takeWhile (<= b) $ dropWhile (< a) $ sieve [2..]
  where sieve (n:ns) = n:sieve [ m | m <- ns, m `mod` n /= 0 ]

result = [ x | x <- primeach 1 600851475143, 600851475143 `mod` x == 0 ]

main :: IO()
main = do
    print(last result)
