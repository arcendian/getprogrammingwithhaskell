-- Listing 3.1: sumSquareOrSquareSum v.1
sumSquareOrSquareSumV1 :: (Num a, Ord a) => a -> a -> a
sumSquareOrSquareSumV1 x y =
  if sumSquare > squareSum
    then sumSquare
    else squareSum
  where
    sumSquare = x ^ 2 + y ^ 2
    squareSum = (x + y) ^ 2

-- sumSquareOrSquareSum v.2: using lambdas
sumSquareOrSquareSumV2 :: (Num a, Ord a) => a -> a -> a
sumSquareOrSquareSumV2 x y =
  ( \sumSquare squareSum ->
      if sumSquare > squareSum
        then sumSquare
        else squareSum
  )
    (x ^ 2 + y ^ 2)
    ((x + y) ^ 2)

-- sumSquareOrSquareSum v.3: using let bindings
sumSquareOrSquareSumV3 :: (Num a, Ord a) => a -> a -> a
sumSquareOrSquareSumV3 x y =
  let sumSquare = (x ^ 2 + y ^ 2)
      squareSum = (x + y) ^ 2
   in if sumSquare > squareSum
        then sumSquare
        else squareSum
