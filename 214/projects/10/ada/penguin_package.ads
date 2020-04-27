-- Penguin_package.ads gives Penguin-related declarations,
--  and derives Penguin from Walking_Bird.
--
-- Begun by: Dr. Adams, CS 214 at Calvin College.
-- Completed by: Duncan Van Keulen
-- Date: 4/27/2020
---------------------------------------------------

with Walking_Bird; use Walking_Bird;

package Penguin_Package is

    type Penguin_Type is new Walking_Bird_Type with private;

 ----------------------------------------------------
 -- A Penguin's Call (Over-rides Bird.Call())       -
 -- Receive: An_Penguin, an Penguin_Type.           -
 -- Return: "Huh-huh-huh-huuuuh!                    -
 ----------------------------------------------------

function  Call(An_Penguin : in Penguin_Type) return String;

 -----------------------------------------------------
 -- Determine type of a Penguin                      -
 -- (Over-rides Bird.Type_Name())                    -
 -- Receive: An_Penguin, an Penguin_Type.            -
 -- Return: "Penguin".                               -
 -----------------------------------------------------

    function  Type_Name(An_Penguin : Penguin_Type) return String;

    private
    
    type Penguin_Type is new Walking_Bird_Type with
        record
            null;
        end record;

end Penguin_Package;
