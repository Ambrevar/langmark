with Ada.Command_Line;
with Ada.Text_IO; use Ada.Text_IO;

procedure Fibonacci is

   function fibo(n : integer) return integer is
   begin
      if n < 2 then
         return n;
      else
         return fibo(n-1) + fibo(n-2);
      end if;
   end fibo;

begin
   Put_Line (Integer'Image(fibo(integer'Value(Ada.Command_Line.Argument(1)))));
end Fibonacci;
