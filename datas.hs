--import System.Locale
import Data.Time
--import Data.Time.Format

main = do
   putStrLn "Testando datas ----"
   start <- getCurrentTime
   
   --today <- getCurrentTime
   --let fim = utctDay today
   let inicio = fromGregorian 1980 01 01
   let fim = fromGregorian 2017 08 24
   let arr = [inicio..fim]
   print arr
   stop <- getCurrentTime
   putStrLn (show $ diffUTCTime stop start)