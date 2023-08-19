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

safeIndex :: [a] -> Int -> Maybe a
safeIndex xs i =
     if length xs < i then Nothing else Just result
     where result = xs !! i

eitherDiv :: Integer -> Integer -> Either String Integer
eitherDiv x y = 
    case y of 
        0 -> Left $ show "you cant divide by zero"
        _ -> Right result
        
        where result = x `div` y

euclideanAlgo :: Integer -> Integer -> Integer
euclideanAlgo a b = case (a, b) of 
    (a', 0) -> a'
    (0, b') -> b'
    (a', b')
        | a' >= b' -> euclideanAlgo (a' - b') b' 
        | otherwise -> euclideanAlgo a' (b' - a')

leftpad :: String -> Int -> String
leftpad str val = case val of 
    n
        | stringLength >= n -> str
        | otherwise -> spaces ++ str
            where
                spaces = replicate (val - stringLength) ' '
                stringLength = length str


            
