-- walking_bird.adb defines Walking_Bird related methods
--
-- By: Duncan Van Keulen
-- Date: 4/27/2020
---------------------------------------------------

with Ada.Text_IO;
use Ada.Text_IO;

package body Walking_Bird is

 ----------------------------------------------------
 -- A Walking_Bird's Movement                       -
 -- Receive: A_Walking_Bird, a Walking_Bird_Type    -
 -- Return: the movement of a walking bird (walking)-
 ----------------------------------------------------

function Movement(A_Walking_Bird : in Walking_Bird_Type) return String is
begin
    return "walked past";
end Movement;

 ------------------------------------------------------------
 -- Determine type of a Walking_Bird (Over-rides Bird.Type_Name()) -
 -- Receive: A_Walking_Bird, a Walking_Bird_Type.                  -
 -- Return: "Walking_Bird".                                        -
 -----------------------------------------------------------

function  Type_Name(A_Walking_Bird : in Walking_Bird_Type) return String is
begin
    return "Walking Bird";
end Type_Name;

end Walking_Bird;