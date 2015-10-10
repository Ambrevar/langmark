program fibonacci;
var
   num: integer;

function fibo(n : integer) : longint;
begin
   if n < 2 then fibo := n
   else fibo := fibo (n-2) + fibo (n-1);
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
      writeln (fibo(num));
   end

end.
