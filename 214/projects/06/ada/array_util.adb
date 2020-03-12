-- array_util.adb implements a driver and funcitons for reading 
--      and printing arrays of values
--
-- Input: User must input size and values of arrays
-- 
-- Output: The values input to the array will be printed back wiht newlines
--
-- By: Duncan Van Keulen
-- Date: 3-5-2020
--------------------------------------------------------------

with Ada.Float_Text_IO, Ada.Text_IO, Ada.Integer_Text_IO;
use Ada.Float_Text_IO, Ada.Text_IO, Ada.Integer_Text_IO;

procedure array_util is

    type Vector is array ( Positive range <> ) of Float;

    its_size : Integer;

----------------------------------------------
-- Fill_Array fills an array with values from the user
-- Receive: anArray, an empty array
----------------------------------------------
procedure Fill_Array(an_array : in out Vector; its_size : in Integer) is
    val : Float;
begin
    for i in 1..its_size loop
        Get(val);
        an_array(i) := val;
    end loop;
    
end Fill_Array;

----------------------------------------------
-- Print_Array prints the values in an array separated by newlines
-- Receive: anArray, an array with values
-- Precondiiton: anArray must have values
----------------------------------------------
procedure Print_Array(an_array : in Vector; its_size : in Integer) is
begin
    for i in 1..its_size loop
        Put(an_array(i));
        Put_Line("");
    end loop;

end Print_Array;

begin
    Put("Enter the size of the array: ");
    Get(its_size);

    declare
        an_array : Vector(1..its_size); -- declaring an empty array
    begin
        Put("Enter the array values: ");
        Fill_Array(an_array, its_size);
        Print_Array(an_array, its_size);
    end;



end array_util;


