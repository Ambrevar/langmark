use std::env;

fn main() {

	fn fib(n: i32) -> i32 {
		if n < 2 {
			n
		} else {
			fib(n-1) + fib(n-2)
		}
	}

	let args: Vec<String> = env::args().collect();
	let default_n = 40i32;
	let n = match args.len() {
		1 => default_n,
		_ => args[1].parse().unwrap_or(default_n)
	};

	println!("{}", fib(n));
}
