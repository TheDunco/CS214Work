-- Kiwi_package.ads gives Kiwi-related declarations,
--  and derives Kiwi from Walking_Bird.
--
-- Begun by: Dr. Adams, CS 214 at Calvin College.
-- Completed by: Duncan Van Keulen
-- Date: 4/27/2020
---------------------------------------------------

with Walking_Bird; use Walking_Bird;

package Kiwi_Package is

    type Kiwi_Type is new Walking_Bird_Type with private;

 ----------------------------------------------------
 -- A Kiwi's Call (Over-rides Bird.Call())          -
 -- Receive: An_Kiwi, an Kiwi_Type.                 -
 -- Return: "Squee! Squee"                          -
 ----------------------------------------------------

function  Call(An_Kiwi : in Kiwi_Type) return String;

 -----------------------------------------------------
 -- Determine type of a Kiwi                         -
 -- (Over-rides Bird.Type_Name())                    -
 -- Receive: An_Kiwi, an Kiwi_Type.                  -
 -- Return: "Kiwi".                                  -
 -----------------------------------------------------

    function  Type_Name(An_Kiwi : Kiwi_Type) return String;

    private
    
    type Kiwi_Type is new Walking_Bird_Type with
        record
            null;
        end record;

end Kiwi_Package;
