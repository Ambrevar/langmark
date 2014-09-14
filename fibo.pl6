#!/usr/bin/env perl6

sub fibo (Int $n) {
    if ($n < 2) {
        return $n;
    } else {
        return fibo ($n-1) + fibo ($n-2);
    }
}

print (fibo ($ARGV[0]), "\n");

