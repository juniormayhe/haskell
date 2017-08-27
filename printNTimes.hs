--declare function to print string n times
printNTimes 0 = return ()
printNTimes n = 
    do
        --putStrLn "a string " 
        
        putStrLn (show $ n)
        printNTimes (n-1)

--entry point, count down from 10 to 0, recursively
main = printNTimes 10