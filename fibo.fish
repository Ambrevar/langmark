#!/usr/bin/env fish

function fibo
	set n $argv[1]
	if test $n -lt 2
		echo $n
	else
		# echo $(($(fibo $(($1-1))) + $(fibo $(($1-2)))))
		echo (math (fibo (math $n-1)) + (fibo (math $n-2)))
	end
end

fibo $argv[1]
