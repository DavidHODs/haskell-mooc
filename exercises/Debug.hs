-- debug file will help me load stand alone functions in ghci inorder to check their functionality
isPalindrome :: String -> Bool
isPalindrome str = 
    -- comparedResult 
    -- where comparedResult = str == reversedString 
    --       reversedString = reverse str
    str == reverse str

palindromify :: String -> String
palindromify s
    | isPalindrome s = s
    | otherwise = last
    where 
        first = tail s 
        last = init first

safeDiv :: Integer -> Integer -> Maybe Integer
safeDiv x y = 
    case y of 
        0 -> Nothing
        n -> Just (x `div` y)

greet :: String -> Maybe String -> String
greet first last = 
    case last of 
        Just lastName -> "Hello, first " ++ lastName
        Nothing -> "Hello, " ++ first