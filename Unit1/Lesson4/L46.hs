-- Listing 4.6: addressLetter v.1
addressLetter :: (String, String) -> String -> String
addressLetter name location = nameText ++ " - " ++ location
  where
    nameText = fst name ++ " " ++ snd name
