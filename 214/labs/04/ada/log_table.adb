-- log_table.adb computes a table of logarithms.
--
-- Input: start, stop, increment, three reals.
-- Precondition: increment is positive.
-- Output: A table of logarithms beginning with log(start),
--         ending with log(stop), with intervals of increment.
--
-- Begun by: Prof. Adams, for CS 214 at Calvin College.
-- Completed by: Duncan Van Keulen on 2-27-2020
--------------------------------------------------------------

with Ada.Text_IO, Ada.Float_Text_IO;
use  Ada.Text_IO, Ada.Float_Text_IO;
with Ada.Numerics.Generic_Elementary_Functions;

procedure log_table is

   -- Instantiate the  float functions package
   package Float_Functions is new Ada.Numerics.Generic_Elementary_Functions (Float) ;
   Start, Stop, Increment, Count, Log_Result: Float;

begin                                           -- Prompt for input
   Put_Line("To print a table of logarithms,");
   Put(" enter the start, stop, and increment values: ");
   Get(Start); Get(Stop); Get(Increment);

   Count := Start;
   loop
      -- Display readable output
      Put("The logarithm of ");
      Put(Count);
      Put(" is ");
      Log_Result := Float_Functions.Log(Count, 10.0);
      Put(Log_Result);
      Put_Line("");

      exit when(Count >= Stop);
      Count := Count + Increment;

   end loop; 


end log_table;

