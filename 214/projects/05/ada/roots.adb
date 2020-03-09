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

with Ada.Float_Text_IO; Ada.Text_IO; Ada.Numerics.Generic_Elementary_Functions;
use Ada.Float_Text_IO; Ada.Text_IO; Ada.Numerics.Generic_Elementary_Functions;

procedure roots is

    A, B, C, root1, root2 : Float;

------------------------------------------------
--  split() splits a string in two.           
-- Receive: The_String, the string to be split,
--          Position, the split index.        
-- PRE: 0 < Position <= The_String.length(). 
--     (Ada arrays are 1-relative by default)
-- Passback: First_Part - the first substring,
--           Last_Part - the second substring.
------------------------------------------------
procedure roots(A : in Float; B : in Float; C : in Float; root1 : out Float; root2 : out Float ) is
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

    roots(A, B, C, root1, root2);

    Put("The roots are: ");
    Put(root1);
    Put(" and ");
    Put(root2);

end roots;






