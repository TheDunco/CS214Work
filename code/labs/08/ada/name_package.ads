-- name_package.ads declares the Name type and its operations.
--
-- Begun by: Dr. Adams, CS 214 at Calvin College.
-- Completed by: Duncan Van Keulen
-- Date: 4/9/2020
--------------------------------------------------------------

with Ada.Text_IO; use Ada.Text_IO;

package Name_Package is

type Name is private;

----------------------------------------------
-- Init initializes a Name variable          -
-- Receive: theName, the Name variable;      -
--          First, the first name;           -
--          Middle, the middle name;         -
--          Last, the last name.             -
-- Return: theName, its fields set to First, -
--               Middle, and Last.           -
----------------------------------------------

procedure Init(Nm : out Name;
    First, Middle, Last : in String);


----------------------------------------------
-- getFirst(Name) retrieves Name.myFirst     -
-- getMiddle(Name) retrieves Name.myMiddle   -
-- getLast(Name) retrieves Name.myLast       -
-- Receive: theName, a Name.                 -
-- PRE: theName has been initialized.        -
-- Return: theName.myFirst, theName.myMiddle,-
--         and theName.myLast respectively.  -
----------------------------------------------

function getFirst(Nm : in Name) return String;

function getMiddle(Nm : in Name) return String;

function getLast(Nm : in Name) return String;


-----------------------------------------------
-- getFullName(Name) retrieves Name as a String  -
-- Receive: theName, a Name.                  -
-- PRE: theName has been initialized.         -
-- Return: a String representation of theName -
-----------------------------------------------

function getFullName(Nm : in Name) return String;

----------------------------------------------
-- Put(Name) displays a Name value.          -
-- PRE: theName has been initialized.        -
-- Receive: theName, a Name.                 -
-- Output: theName, to the screen.           -
----------------------------------------------

procedure Put(Nm : in Name);

----------------------------------------------
-- setFirst(Name) sets Name.myFirst          -
-- Receive: theName, a Name.                 -
-- PRE: theName has been initialized.        -
-- POST: TheName.first will be updated       -
----------------------------------------------

procedure setFirst(TheName : in out Name; NewName : in String);

----------------------------------------------
-- setMiddle(Name) sets Name.myMiddle        -
-- Receive: theName, a Name.                 -
-- PRE: theName has been initialized.        -
-- POST: TheName.middle will be updated      -
----------------------------------------------

procedure setMiddle(TheName : in out Name; NewName : in String);

----------------------------------------------
-- setLast(Name) sets Name.myLast            -
-- Receive: theName, a Name.                 -
-- PRE: theName has been initialized.        -
-- POST: TheName.last will be updated        -
----------------------------------------------

procedure setLast(TheName : in out Name; NewName : in String);

-----------------------------------------------
-- lfmi(Name) retrieves Name as a String      -
--     ordered last, first middle initial     -
-- Receive: theName, a Name.                  -
-- PRE: theName has been initialized.         -
-- Return: a String representation of theName -
-----------------------------------------------

function lfmi(TheName : in Name) return String;

----------------------------------------------
-- read(Name) sets MyFirst, MyMiddle, MyLast -
-- Receive: theName, a Name.                 -
-- PRE: theName has been initialized.        -
-- POST: MyFirst, MyMiddle, and MyLast will  -
--      be set to new values read in through -
--      the keyboard                         -
----------------------------------------------

procedure read(TheName : in out Name);


private

NAME_SIZE : constant Integer := 8;

type Name is 
    record
        MyFirst, MyMiddle, MyLast : String(1..NAME_SIZE);
    end record;

end Name_Package;

