maxPrimeFactors n = maximum (getPrimeFactors n 2)

getPrimeFactors :: (Integral a) => a -> a -> [a]
getPrimeFactors n i
		| i > (floor . sqrt . fromIntegral) n = [n]
		| n `mod` i == 0 = [i] ++ getPrimeFactors (n `div` i) i
		| i == 2 = getPrimeFactors n (i + 1)
		| otherwise = getPrimeFactors n (i + 2)

