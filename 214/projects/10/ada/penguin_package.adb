-- Penguin_package.adb gives Penguin-related definitions
--  by over-riding Bird-related definitions.
--
-- Begun by: Dr. Adams, CS 214 at Calvin College.
-- Completed by: Duncan Van Keulen
-- Date: 4/27/2020
---------------------------------------------------

with Ada.Text_IO;
use Ada.Text_IO;

package body Penguin_Package is

 ----------------------------------------------------
 -- A Penguin's Call (Over-rides Bird.Call())       -
 -- Receive: An_Penguin, an Penguin_Type.           -
 -- Return: "Huh-huh-huh-huuuuh!"                   -
 ----------------------------------------------------

    function Call(An_Penguin : in Penguin_Type) return String is
    begin
        return "Huh-huh-huh-huuuuh!";
    end Call;

 -----------------------------------------------------
 -- (Over-rides Bird.Type_Name())                    -
 -- Determine type of a Penguin                      -
 -- Receive: An_Penguin, an Penguin_Type.            -
 -- Return: "Penguin".                               -
 -----------------------------------------------------

    function Type_Name(An_Penguin : in Penguin_Type) return String is
    begin
        return "Penguin";
    end Type_Name;

end Penguin_Package;
