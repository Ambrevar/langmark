import std.stdio, std.conv;

long fibo(uint m) { // Recursive
	if (m < 2) {
		return m;
	} else {
		return fibo(m - 1) + fibo(m - 2);
	}
	// return (m < 2) ? m : fibo(m - 1) + fibo(m - 2);
}

void main(in string[] args) {
	writefln("%d", fibo (to!int(args[1])));
}
