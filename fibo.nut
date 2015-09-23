function fibo(n) {
	if (n < 2) return n
	return fibo(n-2) + fibo(n-1)
}

local n = vargv.len() != 0 ? vargv[0].tointeger() : 1

print (fibo(n) + "\n")
