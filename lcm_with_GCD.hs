gcd' a 0 = a
gcd' a b = gcd' b (a `mod` b) 

lcm' n = getLCM n 1

getLCM 0 val = val
getLCM n val = getLCM (n - 1) tempVal
		where tempVal = (val * n) `div` (gcd' n val)
