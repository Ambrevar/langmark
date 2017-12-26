import System.Environment

fibo x =
  if x < 2
    then x
    else fibo (x - 1) + fibo (x - 2)

main = do
  (args:_) <- getArgs
  let bar = read args :: Integer
  print (fibo bar)
