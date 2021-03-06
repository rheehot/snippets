{-# LANGUAGE OverloadedStrings #-}
import qualified Data.ByteString.Char8 as Bytes
import System.IO
import System.IO.Error
import Control.Monad

main :: IO ()
main = do
  openFile "input" ReadMode >>=
    \input -> openFile "a.out" WriteMode >>=
      \output -> untilIOError (process input output)

process :: Handle -> Handle -> IO ()
process input output = do
  line <- Bytes.hGetLine input
  if "꾸" `Bytes.isPrefixOf` line
    then Bytes.hPutStrLn output line
    else return ()

untilIOError :: IO a -> IO ()
untilIOError action = do
  catchIOError (forever action) (\_ -> return ())
