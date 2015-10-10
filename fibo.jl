fibo(n) = n < 2 ? n : fibo(n-1) + fibo(n-2)
println(fibo(parse(ARGS[1])))
