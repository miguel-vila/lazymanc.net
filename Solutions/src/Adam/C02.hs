module C02 where

c02 :: IO ()
c02 = do
    putStrLn "Parenthesization:"
    putStrLn $ "1. " ++ show (2 + 2 * 3 - 1)     ++ "    vs " ++ show ((2 + (2 * 3)) - 1)
    putStrLn $ "2. " ++ show ((^) 10 $ 1 + 1)    ++ "  vs " ++ show (10^(1 + 1))
    putStrLn $ "3. " ++ show (2 ^ 2 * 4 ^ 5 + 1) ++ " vs " ++ show (((2^2) * (4^5)) + 1)
    putStrLn ""
    putStrLn "Equivalent expressions"
    putStrLn $ "1. 1 + 1       == 2"            ++ "?            -> " ++ show (1 + 1                      == 2)
    putStrLn $ "2. 10 ^ 2      == 10 + 9 * 10"  ++ "?  -> "           ++ show (10^2                       == 10 + 9*10)
    putStrLn $ "3. 400 - 37    == (-) 37 400"   ++ "?   -> "          ++ show (400 - 37                   == (-) 37 400)
    putStrLn $ "4. 100 `div` 3 == 100 / 3"      ++ "?      -> "       ++ show (fromIntegral (100 `div` 3) == 100 / 3)

waxOn :: Integer
waxOn = x * 5
    where
        x = y ^ 2
        y = z + 8
        z = 7

waxOff :: Integer -> Integer
waxOff = (^ 2) . triple

triple :: Integer -> Integer
triple x = x * 3
