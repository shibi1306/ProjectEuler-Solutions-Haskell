isPrime n = calcPrime n 2

calcPrime n i 
		| i > (floor . sqrt . fromIntegral) n = True
		| n `mod` i == 0 = False
		| otherwise = calcPrime n (i+1)

getNthPrime n = [x| x <- [2..], isPrime x] !! (n-1) 
