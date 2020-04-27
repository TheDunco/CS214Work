-- Kiwi_package.adb gives Kiwi-related definitions
--  by over-riding Bird-related definitions.
--
-- Begun by: Dr. Adams, CS 214 at Calvin College.
-- Completed by: Duncan Van Keulen
-- Date: 4/27/2020
---------------------------------------------------

with Ada.Text_IO;
use Ada.Text_IO;

package body Kiwi_Package is

 ----------------------------------------------------
 -- A Kiwi's Call (Over-rides Bird.Call())          -
 -- Receive: An_Kiwi, an Kiwi_Type.                 -
 -- Return: "Squee! Squee!"                         -
 ----------------------------------------------------

    function Call(An_Kiwi : in Kiwi_Type) return String is
    begin
        return "Squee! Squee!";
    end Call;

 -----------------------------------------------------
 -- (Over-rides Bird.Type_Name())                    -
 -- Determine type of a Kiwi                         -
 -- Receive: An_Kiwi, an Kiwi_Type.                  -
 -- Return: "Kiwi".                                  -
 -----------------------------------------------------

    function Type_Name(An_Kiwi : in Kiwi_Type) return String is
    begin
        return "Kiwi";
    end Type_Name;

end Kiwi_Package;
