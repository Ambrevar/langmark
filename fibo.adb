with Ada.Command_Line;
with Ada.Text_IO; use Ada.Text_IO;

procedure Fibo is

   function fib(n : integer) return integer is
   begin
      if n < 2 then
         return n;
      else
         return fib(n-1) + fib(n-2);
      end if;
   end fib;

begin
   Put_Line (Integer'Image(fib(integer'Value(Ada.Command_Line.Argument(1)))));
end Fibo;
