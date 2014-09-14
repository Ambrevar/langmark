#!/usr/bin/env perl

use strict;
use warnings;

sub fibo {
    my $n = shift;
    if ($n < 2) {
        return $n;
    } else {
        return fibo($n-1) + fibo($n-2);
    }
}

print (fibo ($ARGV[0]), "\n");

