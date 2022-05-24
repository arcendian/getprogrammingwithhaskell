-- Listing 4.7: sfOffice, nyOffice, renoOffice
sfOffice :: (String, String) -> String
sfOffice name =
  if lastName < "L"
    then nameText ++ " - PO Box 1234 - San Francisco, CA, 9411"
    else nameText ++ " - PO Box 1010 - San Francisco, CA, 94109"
  where
    lastName = snd name
    nameText = fst name ++ " " ++ lastName

nyOffice :: (String, String) -> String
nyOffice name = nameText ++ ": PO Box 789 - New York, NY, 10013"
  where
    nameText = fst name ++ " " ++ snd name

renoOffice :: (String, String) -> String
renoOffice name = nameText ++ " - PO Box 456 - Reno, NV 89523"
  where
    nameText = snd name

-- Listing 4.8: getLocationFuntion
-- TODO: How to properly write type signature for this function?
getLocationFunction location = case location of
  "ny" -> nyOffice
  "sf" -> sfOffice
  "reno" -> renoOffice
  _ -> (\name -> fst name ++ " " ++ snd name)

addressLetter :: (String, String) -> String -> String
addressLetter name location = locationFunction name
  where
    locationFunction = getLocationFunction location
