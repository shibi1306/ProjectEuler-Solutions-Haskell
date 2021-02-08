fibonacci n = let array = getSeries 0 1 n 
		in array

getSeries x1 x2 n 	| x2 > n = []
		 	| otherwise = x2:getSeries x2 (x1+x2) n


sumOfEven n = sum [x | x <- fibonacci n, x `mod` 2 == 0]


