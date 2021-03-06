-- Quick check 3.2
--
-- Rewrite the following function to use a lambda function in
-- place of where:
--
-- doubleDouble x = dubs * 2
--   where
--     dubs = x * 2

doubleDouble :: Num a => a -> a
doubleDouble x = (\dubs -> dubs * 2) (x * 2)
