-- Listing 4.1: ifEvenInc
-- ifEvenInc :: Integral a => a -> a
-- ifEvenInc n =
--   if even n
--     then n + 1
--     else n

-- Listing 4.2: ifEvenDouble and ifEvenSquare
-- ifEvenDouble :: Integral a => a -> a
-- ifEvenDouble n =
--   if even n
--     then n * 2
--     else n

-- ifEvenSquare :: Integral a => a -> a
-- ifEvenSquare n =
--   if even n
--     then n ^ 2
--     else n

-- Listing 4.3: ifEven
ifEven myFunction x =
  if even x
    then myFunction x
    else x

inc :: Integral a => a -> a
inc n = n + 1

double :: Integral a => a -> a
double n = n * 2

square :: Integral a => a -> a
square n = n ^ 2

ifEvenInc :: Integral a => a -> a
ifEvenInc = ifEven inc

ifEvenDouble :: Integral a => a -> a
ifEvenDouble = ifEven double

ifEvenSquare :: Integral a => a -> a
ifEvenSquare = ifEven square

-- Quick check 4.1: Write a lambda function for cubing x and pass it to ifEven
-- ifEven (\x -> x ^ 3) 2
