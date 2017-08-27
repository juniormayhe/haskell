import Data.Time

isPrime :: Int -> Bool
isPrime 1 = False
isPrime x = null $ take 1 [n | n <- [2..upperBound x], 0 == mod x n]
    where upperBound = floor . sqrt . fromIntegral

main = do
    start <- getCurrentTime
    mapM_ (\n -> putStrLn ("isPrime " ++ (show $ n ) ++ " " ++ (show $ isPrime(n))) ) [1..1000000]
    stop <- getCurrentTime
    let time1 =  diffUTCTime stop start
    
    
    start <- getCurrentTime
    mapM_ (\n -> putStrLn ("isPrime " ++ (show $ n ) ++ " " ++ (show $ isPrime(n))) ) [1..1000000]
    stop <- getCurrentTime
    let time2 =  diffUTCTime stop start
    

    start <- getCurrentTime
    mapM_ (\n -> putStrLn ("isPrime " ++ (show $ n ) ++ " " ++ (show $ isPrime(n))) ) [1..1000000]
    stop <- getCurrentTime
    let time3 =  diffUTCTime stop start

    putStrLn (show $ time1)
    putStrLn (show $ time2)
    putStrLn (show $ time3)