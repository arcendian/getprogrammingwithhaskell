-- Listing 3.2
--
-- The overwrite function
-- (demonstrating shadowing?:)
-- overwrite x =
--   let x = 2
--    in let x = 3
--        in let x = 4
--            in x

-- Quick check 3.3: Redefine overwrite by using only lambdas
overwrite :: Num a => a -> a
overwrite x =
  ( \x ->
      ( \x ->
          (\x -> x) 4
      )
        3
  )
    2
