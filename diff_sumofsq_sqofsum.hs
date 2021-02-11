sumOfSquares n = sum[x * x | x <- [1..n]]

squaresOfSum n = let x = sum [1..n]
		in x * x


diff_sumofsq_sqofsum n = (squaresOfSum n) - (sumOfSquares n)
