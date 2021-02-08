multiples_3_5 :: (Integral a) => a -> a
multiples_3_5 n = sum [x | x <- [1..n-1], x `mod` 3 == 0 || x `mod` 5 == 0]
