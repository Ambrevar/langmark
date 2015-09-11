#include <stdio.h>
#include <stdlib.h>

unsigned long fibo(unsigned long n) {
	if (n < 2) {
		return n;
	} else {
		return fibo(n - 1) + fibo(n - 2);
	}
}

int main(int argc, char **argv) {
	printf("%ld\n", fibo(atol(argv[1])));
	return 0;
}
