#!/bin/sh

fibo() {
	if [ $1 -lt 2 ]; then
		echo $1
	else
		echo $(($(fibo $(($1-1))) + $(fibo $(($1-2)))))
	fi
}

fibo $1
