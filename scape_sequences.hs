add :: Integer -> Integer -> Integer    --function declaration
add x y = x + y                         --function definition


show_text :: String -> String
show_text text = text ++ "polish"

make_text_scape_sequence :: String -> String
make_text_scape_sequence text = "\ESC[" ++ text ++ "A"

goto :: String -> String
goto posX = "\ESC[" ++ posX ++ ";0H"

main = do clear         
          
          putStrLn ("Write the number of the line where you want to write the text ")          
          i <- getLine
          putStrLn (goto i)
          putStrLn ("this text is writed in the line " ++ i)

clear = putStr "\ESC[2J \ESC[0;0H"  -- \ESC[2J clear terminal scape sequence and \ESC[0;0H  move cursor to 0 , 0 


