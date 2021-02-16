product_digits 0 = 1
product_digits n = let x = n `mod` 10; y = n `div` 10
			in x * (product_digits y)

largestProduct m n = getMax m n 0

getMax m n maxVal 
		| n == 0 = maxVal
		| maxVal < x = getMax m y x
		| otherwise = getMax m y maxVal
		where x = product_digits (n `mod` (10 ^ m)); y = n `div` 10
