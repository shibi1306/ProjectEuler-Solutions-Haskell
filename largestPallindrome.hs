largestPallindrome nDigits = let n = (10 ^ nDigits) - 1
			in maximum [x | x1 <- [n,n-1..1], x2 <- [n,n-1..1], let x = x1 * x2, isPallindrome x]
			
isPallindrome n = n == (getReverse n 0)

getReverse 0 s = s
getReverse n s = let lastDigit = n `mod` 10; newS = (s * 10) + lastDigit
		in getReverse (n `div` 10) newS
