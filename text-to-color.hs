import Data.Char
import System.IO
import System.Environment

colorCode :: String -> String
colorCode "" = ""
colorCode s = (chr 3) : s ++ [chr 3]

charToBg :: Char -> String
charToBg 'w' = "0,0 "
charToBg 'b' = "1,1 "
charToBg 'n' = "2,2 "
charToBg 'g' = "3,3 "
charToBg 'r' = "4,4 "
charToBg 'm' = "5,5 "
charToBg 'p' = "6,6 "
charToBg 'o' = "7,7 "
charToBg 'y' = "8,8 "
charToBg 'l' = "9,9 "
charToBg 't' = "10,10 "
charToBg 'a' = "11,11 "
charToBg 'k' = "12,12 "
charToBg 'f' = "13,13 "
charToBg 'h' = "14,14 "
charToBg 's' = "15,15 "
charToBg c   = [c]

textToColor :: String -> String
textToColor = concat . map (colorCode . charToBg)

main :: IO ()
main = getArgs >>= mapM_ (putStrLn . textToColor)
