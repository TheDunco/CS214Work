-- Ostrich_package.ads gives Ostrich-related declarations,
--  and derives Ostrich from Walking_Bird.
--
-- Begun by: Dr. Adams, CS 214 at Calvin College.
-- Completed by: Duncan Van Keulen
-- Date: 4/27/2020
---------------------------------------------------

with Walking_Bird; use Walking_Bird;

package Ostrich_Package is

    type Ostrich_Type is new Walking_Bird_Type with private;

 ----------------------------------------------------
 -- A Ostrich's Call (Over-rides Bird.Call())       -
 -- Receive: An_Ostrich, an Ostrich_Type.           -
 -- Return: "Snork!"                                -
 ----------------------------------------------------

function  Call(An_Ostrich : in Ostrich_Type) return String;

 -----------------------------------------------------
 -- Determine type of a Ostrich                      -
 -- (Over-rides Bird.Type_Name())                    -
 -- Receive: An_Ostrich, an Ostrich_Type.            -
 -- Return: "Ostrich".                               -
 -----------------------------------------------------

    function  Type_Name(An_Ostrich : Ostrich_Type) return String;

    private
    
    type Ostrich_Type is new Walking_Bird_Type with
        record
            null;
        end record;

end Ostrich_Package;
