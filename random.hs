import System.Random-- (randomRIO)

foo :: Int -> IO Int
foo n = do
    putStrLn "Foo Function has run!"
    g <- newStdGen
    randomRIO (1, 1000000)
    
main :: IO ()
main = do
    n <- foo 6
    print (n)