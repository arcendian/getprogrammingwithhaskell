-- Listing 4.1: ifEvenInc
ifEvenInc :: Integral a => a -> a
ifEvenInc n =
  if even n
    then n + 1
    else n
