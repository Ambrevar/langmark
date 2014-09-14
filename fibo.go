package main

import ("fmt"; "os"; "strconv")

func fibonacci(n int) int {
	if n < 2 {
       return n
	} else {
        return fibonacci(n-2) + fibonacci(n-1)
	}
}

func main() {
	var n, _ = strconv.Atoi (os.Args[1])
	fmt.Println (fibonacci (n))
}
