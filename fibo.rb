def fibo(n)
  return n if n < 2

  return fibo(n-1) + fibo(n-2)
end

puts fibo(ARGV[0].to_i)
