-- Flying_Bird.ads gives Flying_Bird related declarations
--
-- By: Duncan Van Keulen
-- Date: 4/27/2020
---------------------------------------------------

with Bird_Package; use Bird_Package;

package Flying_Bird is

type Flying_Bird_Type is new Bird_Type with private;

 ----------------------------------------------------
 -- A Flying_Bird's Movement                        -
 -- Receive: A_Flying_Bird, a Flying_Bird_Type      -
 -- Return: the movement of a flying bird (flying)  -
 ----------------------------------------------------

function Movement(A_Flying_Bird : in Flying_Bird_Type) return String;

 ------------------------------------------------------------
 -- Determine type of a Flying_Bird (Over-rides Bird.Type_Name())-
 -- Receive: A_Flying_Bird, a Flying_Bird_Type.                  -
 -- Return: "Flying_Bird".                                       -
 -----------------------------------------------------------

function  Type_Name(A_Flying_Bird : in Flying_Bird_Type) return String;

private

    type Flying_Bird_Type is new Bird_Type with
        record
            null;
        end record;

end Flying_Bird;