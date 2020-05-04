-- walking_bird.ads gives Walking_Bird related declarations
--
-- By: Duncan Van Keulen
-- Date: 4/27/2020
---------------------------------------------------

with Bird_Package; use Bird_Package;

package Walking_Bird is

type Walking_Bird_Type is new Bird_Type with private;

 ----------------------------------------------------
 -- A Walking_Bird's Movement                       -
 -- Receive: A_Walking_Bird, a Walking_Bird_Type    -
 -- Return: the movement of a walking bird (walking)-
 ----------------------------------------------------

function Movement(A_Walking_Bird : in Walking_Bird_Type) return String;

 ------------------------------------------------------------
 -- Determine type of a Walking_Bird (Over-rides Bird.Type_Name()) -
 -- Receive: A_Walking_Bird, a Walking_Bird_Type.                  -
 -- Return: "Walking_Bird".                                        -
 -----------------------------------------------------------

function  Type_Name(A_Walking_Bird : in Walking_Bird_Type) return String;

private

    type Walking_Bird_Type is new Bird_Type with
        record
            null;
        end record;

end Walking_Bird;