-- Listing 4.2: ifEvenDouble and ifEvenSquare
ifEvenDouble :: Integral a => a -> a
ifEvenDouble n =
  if even n
    then n * 2
    else n

ifEvenSquare :: Integral a => a -> a
ifEvenSquare n =
  if even n
    then n ^ 2
    else n
