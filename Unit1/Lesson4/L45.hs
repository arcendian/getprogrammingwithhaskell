-- Listing 4.5: compareLastNames
-- compareLastNames :: (String, String) -> (String, String) -> Ordering
-- compareLastNames name1 name2 =
--   if lastName1 > lastName2
--     then GT
--     else
--       if lastName1 < lastName2
--         then LT
--         else EQ
--   where
--     lastName1 = snd name1
--     lastName2 = snd name2

-- cleaner version of above
compareLastNames :: (String, String) -> (String, String) -> Ordering
compareLastNames name1 name2
  | lastName1 > lastName2 = GT
  | lastName1 < lastName2 = LT
  | otherwise = EQ
  where
    lastName1 = snd name1
    lastName2 = snd name2

-- By loading this into the GHCI, we can use this function as argument to
-- sortBy to create our custom sorting function:
-- GHCI> sortBy compareLastNames names
