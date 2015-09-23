proc fibo {n} {
    if {$n < 2} {
        return $n
    } else {
        return [expr {[fibo [expr {$n-2}]] + [fibo [expr {$n-1}]]}]
    }
}

set N [lindex $argv 0]
puts [fibo $N]
