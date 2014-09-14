#!/bin/awk -f

function fibo(n) {
    if(n < 2)
        return n
    else
        return fibo(n-1)+fibo(n-2)
}

BEGIN {
    print fibo(ARGV[1])
}
