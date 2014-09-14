# Language Benchmark
## Author: P. Neidhardt
### 2014-09-13

Description
===========

As for every other benchmark, one important thing to keep in mind is that the
results depend on *what* you measure, it is not an absolute ranking of
performance.

We essentially measure arithmetic operations and nested function calls.
Currently, the tests are performed over a recursive Fibonacci function: this
poor implementation is done on purpose as it yields exponential function calls.

One major flaw of most benchmarks lies in the tendency to measure advanced
algorithms (cf. scientific benchmarks), which implementation is not necessarily
done in the target language, but in a submodule usually written in C. It hardly
says anything on the interpreter performance.

Note there is no average computation, only one run. Poor statistics indeed, but
we like to keep it simple.


Resource
========

http://www.scriptol.com/programming/fibonacci.php
http://rosettacode.org/wiki/Fibonacci_sequence
http://rosettacode.org/wiki/Command-line_arguments#JavaScript
