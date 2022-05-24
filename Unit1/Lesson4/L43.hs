-- Listing 4.3: ifEven
ifEven :: Integral a => (a -> a) -> a -> a
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
