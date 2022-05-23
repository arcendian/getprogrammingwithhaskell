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

-- Quick check 3.2 Rewrite the following function to use a lambda function in
-- place of where:
--
-- doubleDouble x = dubs * 2
--   where
--     dubs = x * 2

doubleDouble :: Num a => a -> a
doubleDouble x = (\dubs -> dubs * 2) (x * 2)

-- sumSquareOrSquareSum v.3: using let bindings
sumSquareOrSquareSumV3 x y =
  let sumSquare = (x ^ 2 + y ^ 2)
      squareSum = (x + y) ^ 2
   in if sumSquare > squareSum
        then sumSquare
        else squareSum

-- Listing 3.2: The overwrite function
-- demonstrating shadowing?
-- overwrite x =
--   let x = 2
--    in let x = 3
--        in let x = 4
--            in x

-- Quick check 3.3: Redefine overwrite by using only lambdas
overwrite x =
  ( \x ->
      ( \x ->
          (\x -> x) 4
      )
        3
  )
    2

-- Q3.2 Using a let expression and a lambda function aren't exactly the same
-- thing under the hood. For example, the following code will cause an error
-- if you try to run it:
-- counter x =
--   let x = x + 1
--    in let x = x + 1
--        in x

counter x =
  ( \x ->
      ( \x ->
          ( \x -> x + 1
          )
            x
      )
        x
  )
    x
