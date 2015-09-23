let rec fibo n =
  if n < 2 then n
  else fibo (n - 2) + fibo (n - 1)

let _ =
  let n =
    try int_of_string Sys.argv.(1)
    with Invalid_argument _ -> 1 in
  Printf.printf "%d\n" (fibo n)
