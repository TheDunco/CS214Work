-- Flying_Bird.adb defines Flying_Bird related methods
--
-- By: Duncan Van Keulen
-- Date: 4/27/2020
---------------------------------------------------

with Ada.Text_IO;
use Ada.Text_IO;

package body Flying_Bird is

 ----------------------------------------------------
 -- A Flying_Bird's Movement                        -
 -- Receive: A_Flying_Bird, a Flying_Bird_Type      -
 -- Return: the movement of a flying bird (flying)  -
 ----------------------------------------------------

function Movement(A_Flying_Bird : in Flying_Bird_Type) return String is
begin
    return "flew past";
end Movement;

 ------------------------------------------------------------
 -- Determine type of a Flying_Bird (Over-rides Bird.Type_Name())-
 -- Receive: A_Flying_Bird, a Flying_Bird_Type.                  -
 -- Return: "Flying_Bird".                                       -
 -----------------------------------------------------------

function Type_Name(A_Flying_Bird : in Flying_Bird_Type) return String is
begin
    return "Flying Bird";
end Type_Name;

end Flying_Bird;