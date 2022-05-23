-- Write functions named inc, double, and square that
-- increment, double, and square an argument n, respectively.

inc :: Num a => a -> a
inc n = n + 1

double :: Num a => a -> a
double n = n * 2

square :: Num a => a -> a
square n = n * n

-- Write a function that takes a value n. If n is even, the function
-- returns n - 2, and if the number is odd, the function returns
-- 3n + 1. To check whether the number is even, you can use either
-- Haskell's even function or mod (Haskell's modulo function).

dontKnowTheName :: Integral a => a -> a
dontKnowTheName n = if even n then n - 2 else 3 * n + 1
