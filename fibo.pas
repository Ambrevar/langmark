program fibo;
var
   num: integer;

function fib(n : integer) : longint;
begin
   if n < 2 then fib := n
   else fib := fib (n-2) + fib (n-1);
end;

begin
   if ParamCount = 0 then
   begin
      num := 1;
   end
   else
   begin
      val (ParamStr (1), num);
   end;
   begin
      writeln (fib(num));
   end

end.
