-- Quick check 4.2
--
-- In compareLastNames, you didn't handle the case of having two last names
-- that are the same but with different first names. Modify the
-- compareLastNames function to compare first names and use it to fix
-- compareLastNames.
compareLastNames :: (String, String) -> (String, String) -> Ordering
compareLastNames name1 name2
  | lastName1 > lastName2 = GT
  | lastName1 < lastName2 = LT
  | otherwise =
    if firstName1 > firstName2
      then GT
      else
        if firstName1 < firstName2
          then LT
          else EQ
  where
    lastName1 = snd name1
    lastName2 = snd name2
    firstName1 = fst name1
    firstName2 = fst name2
