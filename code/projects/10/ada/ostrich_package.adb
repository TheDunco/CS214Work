-- Ostrich_package.adb gives Ostrich-related definitions
--  by over-riding Bird-related definitions.
--
-- Begun by: Dr. Adams, CS 214 at Calvin College.
-- Completed by: Duncan Van Keulen
-- Date: 4/27/2020
---------------------------------------------------

with Ada.Text_IO;
use Ada.Text_IO;

package body Ostrich_Package is

 ----------------------------------------------------
 -- A Ostrich's Call (Over-rides Bird.Call())       -
 -- Receive: An_Ostrich, an Ostrich_Type.           -
 -- Return: "Snork!"                   -
 ----------------------------------------------------

    function Call(An_Ostrich : in Ostrich_Type) return String is
    begin
        return "Snork!";
    end Call;

 -----------------------------------------------------
 -- (Over-rides Bird.Type_Name())                    -
 -- Determine type of a Ostrich                      -
 -- Receive: An_Ostrich, an Ostrich_Type.            -
 -- Return: "Ostrich".                               -
 -----------------------------------------------------

    function Type_Name(An_Ostrich : in Ostrich_Type) return String is
    begin
        return "Ostrich";
    end Type_Name;

end Ostrich_Package;
