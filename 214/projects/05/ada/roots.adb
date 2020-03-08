-- roots.adb calculates quadratic roots.
--
-- Input: 
--        
-- Precondition: 
-- Output: 
--
-- By: Duncan Van Keulen
-- Date: 3-6-2020
--------------------------------------------------------------

with Ada.Float_Text_IO;
use Ada.Float_Text_IO;
with Ada.Numerics.Generic_Elementary_Functions;

procedure roots is

    A, B, C : Double;

procedure roots(A : in Float; B : in Float; C : in Float) is
begin
    Put("Got'eem");

end roots;

begin
    -- Get inputs of a, b, and c
    Put("To get the roots of a quadratic function...\nEnter a: ");
    Get(A);
    Put("\nEnter b: ");
    Get(B);
    Put("\nEnter c: ");
    Get(C);

end roots;






