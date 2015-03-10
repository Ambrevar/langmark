#!/usr/bin/php
<?php
function fibo($n) {
    if ($n < 2) {
        return $n;
    }
    return fibo($n-2) + fibo($n-1);
}
echo fibo($argv[1]) . "\n"
?>