-- factorial.adb computes the factorial of a number.
--
-- Input: n, a positive real number
-- Output: The factorial of n
--
-- Duncan Van Keulen on 2-27-2020
--------------------------------------------------------------
with Ada.Text_IO, Ada.Float_Text_IO;
use  Ada.Text_IO, Ada.Float_Text_IO;

procedure factorial is

    n, Count, Answer : Float;
    begin
        Put("Enter a number: ");
        Get(n);

        Count := n;
        Answer := 1.0;
        loop
            exit when(Count = 0.0);
            Answer := Answer * Count;   -- multiply the answer by count
            Count := Count - 1.0;       -- decrement count
        end loop;
        Put(n); Put("! = ") ; Put(Answer);
end;