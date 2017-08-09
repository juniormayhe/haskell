import System.IO

main = do
   putStrLn "Hello ----"
   putStrLn "Hello world!"

   putStrLn "\nRead input and if ----" 
   putStrLn "Enter a number"
   x <- readLn
   if x < 5
      then putStrLn "The number less than 5"
      else putStrLn "The number equal or greater than 5"

   putStrLn "\nDouble function----"
   let doubleMe x = x + x
   putStr (show $ doubleMe x)