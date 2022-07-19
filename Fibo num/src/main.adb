 with Ada.Text_IO; use Ada.Text_IO;

procedure Main is

   current :Integer;
   previous :Integer :=2;
   previous2 :Integer :=1;
   sum :Integer :=2;

begin

   while current < 4000000 loop

      current := previous + previous2;

      if (current mod 2) = 0 then

         sum := sum + current;

      end if;

      previous2 := previous;
      previous := current;

   end loop;

   Put_Line(Integer'Image(sum));

end Main;
