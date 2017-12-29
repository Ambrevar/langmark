fun fibo 0 = 0
	| fibo 1 = 1
	| fibo n = fibo (n-2) + fibo (n-1);

print (Int.toString(fibo (valOf(Int.fromString(hd(CommandLine.arguments ()))))) ^ "\n");
