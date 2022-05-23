-- A messy version of first_prg.hs
-- """
--
-- The key issue is that this code is one big mononolithic function named
-- messyMain
--
-- """

messyMain :: IO ()
messyMain = do
  print "Who is the email for?"
  recipient <- getLine
  print "What is the Title?"
  title <- getLine
  print "Who is the Author?"
  author <- getLine
  print
    ( "Dear " ++ recipient ++ ",\n" ++ "Thanks for buying " ++ title
        ++ "\nthanks,\n"
        ++ author
    )

-- Breaking up messy main into functions that can be composed
toPart :: String -> String
toPart recipient = "Dear " ++ recipient ++ ",\n"

bodyPart :: String -> String
bodyPart bookTitle = "Thanks for buying " ++ bookTitle ++ ".\n"

fromPart :: String -> String
fromPart author = "Thanks,\n" ++ author

createEmail :: String -> String -> String -> String
createEmail recipient bookTitle author =
  toPart recipient ++ bodyPart bookTitle ++ fromPart author

main :: IO ()
main = do
  print "Who is the email for?"
  recipient <- getLine
  print "What is the Title?"
  title <- getLine
  print "Who is the Author?"
  author <- getLine
  print (createEmail recipient title author)
