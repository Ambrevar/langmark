# Language Benchmark
## Author: P. Neidhardt

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

Usage
=====

List the default languages.

	$ make list

Run the default tests.

	$ make

Initialize the benchmark.

	$ make init

Run specific tests.

	$ make c lua

Run the tests with a different limit.

	$ make args=20

Build in a different folder.

	$ make build=temp

Change time command and parameters.

	$ make TIME=/usr/local/bin/time TFLAGS=-p

Clean.

	$ make clean

The above arguments can be combined when that makes sense.

Bugs
====

We do not check bounds nor argument type. This makes code shorter and more
identical accross various programming languages.

Resource
========

* http://www.scriptol.com/programming/fibonacci.php
* http://rosettacode.org/wiki/Fibonacci_sequence
* http://rosettacode.org/wiki/Command-line_arguments
