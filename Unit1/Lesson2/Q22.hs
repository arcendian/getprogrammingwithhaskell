-- Q2.3
--
-- Write functions named inc, double, and square that
-- increment, double, and square an argument n, respectively.

inc :: Num a => a -> a
inc n = n + 1

double :: Num a => a -> a
double n = n * 2

square :: Num a => a -> a
square n = n * n
