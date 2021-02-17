pythagoreanTriplet n = [a*b*c | a <- [1..((n-3)`div`3)], b <- [a..((n-1-a)`div`2)], let c = n - a - b, (a ^ 2) + (b ^ 2) == (c ^ 2)] 
