package main

import (
	"fmt"
	"os"
	"strconv"
)

func fibo(n int) int {
	if n < 2 {
		return n
	}
	return fibo(n-2) + fibo(n-1)
}

func main() {
	var n, _ = strconv.Atoi(os.Args[1])
	fmt.Println(fibo(n))
}
