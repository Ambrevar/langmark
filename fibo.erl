-module(fibo).
-export([start/0]).

fibo(0) -> 0;
fibo(1) -> 1;
fibo(N) -> fibo(N-1) + fibo(N-2).

start() ->
	io:fwrite("~w!~n", [fibo(40)]).
