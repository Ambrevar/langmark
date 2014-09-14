proc fib {n} {
    if {$n < 2} {
        return $n
    } else {
        return [expr {[fib [expr {$n-2}]] + [fib [expr {$n-1}]]}]
    }
}

set N [lindex $argv 0]
puts [fib $N]
