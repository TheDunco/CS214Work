-- roots.adb calculates quadratic roots.
--
-- Input: A, B, C : floats corresponding to A, B, C in quadratic equation
--        
-- Precondition: A is positive, b^2 - 4 * a * c is positive
-- Output: root1, root2 : floats, the roots fo the quadratic function
--
-- By: Duncan Van Keulen
-- Date: 3-9-2020
--------------------------------------------------------------

with Ada.Float_Text_IO, Ada.Text_IO, Ada.Numerics.Generic_Complex_Elementary_Functions,
    Ada.Numerics.Elementary_Functions, Ada.Strings.Fixed;
use Ada.Float_Text_IO, Ada.Text_IO, Ada.Strings.Fixed;

procedure roots is

    A, B, C, root1, root2 : Float := 0.0;

------------------------------------------------
--  get_roots gets the roots of a quadratic equation.           
-- Receive: A, B, C, corresponding to quadratic equation values of the function        
-- PRE: A != 0, A^2 - 4AC > 0
--     (Ada arrays are 1-relative by default)
-- Passback: root1 - the first root,
--           root2 - the second root.
------------------------------------------------
function get_roots(A : in Float; B : in Float; C : in Float; root1 : out Float; root2 : out Float) return Boolean is
arg : Float;
begin
    if (A /= 0.0) then 
        -- calculate the discriminant
        arg := ((B ** 2) - (4.0 * A * C));
        -- make sure A is positive
        if (arg >= 0.0) then
            root1 := (-b + (Ada.Numerics.Elementary_Functions.Sqrt(arg)))/(2.0*a);
            root2 := (-b - (Ada.Numerics.Elementary_Functions.Sqrt(arg)))/(2.0*a);
            return true;

        else  -- discriminant is zero
            Put_Line("get_roots failed: b^2 - 4ac is negative!");
            root1 := 0.0; root2 := 0.0;
            return false;
        end if;
    else -- A is < zero
        Put_Line("get_roots failed: a is zero!");
        root1 := 0.0; root2 := 0.0;
        return false;
    end if;
end get_roots;

begin
    -- Get inputs of a, b, and c
    Put_Line("To get the roots of a quadratic function...");
    Put("Enter a: ");
    Get(A);
    Put("Enter b: ");
    Get(B);
    Put("Enter c: ");
    Get(C);

    if (get_roots(A, B, C, root1, root2) = true) then

        Put("The roots are: ");
        Put(root1);
        Put(" and ");
        Put(root2);

    end if;

end roots;