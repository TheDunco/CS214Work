-- name_package.adb defines operations for the Name type.
--
-- Begun by: Dr. Adams, CS 214 at Calvin College.
-- Completed by: Duncan Van Keulen
-- Date: 2/9/2020
---------------------------------------------------------

with Ada.Text_IO; use Ada.Text_IO;

package body Name_Package is

----------------------------------------------
-- Init initializes a Name variable          
-- Receive: Nm, the Name variable;          
--          First, the first name;         
--          Middle, the middle name;      
--          Last, the last name.         
-- Return: Nm, its fields set to First, 
--               Middle, and Last.     
----------------------------------------------

procedure Init(Nm: out Name;
                First, Middle, Last : in String) is
begin
    Nm.MyFirst := First;
    Nm.MyMiddle := Middle;
    Nm.MyLast := Last;
end Init;

----------------------------------------------
-- getFirst(Name) retrieves Name.myFirst        
-- Receive: Nm, a Name.                      
-- PRE: Nm has been initialized.            
-- Return: Nm.myFirst.                     
----------------------------------------------
function getFirst( Nm: in Name) return String is
begin
    return Nm.MyFirst;
end getFirst;

----------------------------------------------
-- getMiddle(Name) retrieves Name as a String 
-- Receive: Nm, a Name.        
-- PRE: Nm has been initialized.
-- Return: Nm.myMiddle. 
----------------------------------------------
function getMiddle( Nm: in Name) return String is
begin
    return Nm.MyMiddle;
end getMiddle;

----------------------------------------------
-- getLast(Name) retrieves Name.myLast       
-- Receive: Nm, a Name.                    
-- PRE: Nm has been initialized.            
-- Return: Nm.myLast.                        
----------------------------------------------
function getLast( Nm: in Name) return String is
begin
    return Nm.MyLast;
end getLast;

----------------------------------------------
-- getFullName(Name) retrieves Name as a String -
-- Receive: Nm, a Name.                      -
-- PRE: Nm has been initialized.             -
-- Return: a String representation of Nm.    -
----------------------------------------------
function getFullName( Nm: in Name) return String is
begin
    return Nm.MyFirst & " "
        & Nm.MyMiddle & " "
        & Nm.MyLast;
end getFullName;

----------------------------------------------
-- Put(Name) displays a Name value.          -
-- PRE: Nm has been initialized.             -
-- Receive: Nm, a Name.                      -
-- Output: Nm, to the screen.                -
----------------------------------------------
procedure Put(Nm: in Name) is
begin
    Put( getFullName(Nm) );
end Put;

----------------------------------------------
-- setFirst(Name) sets Name.myFirst          -
-- Receive: theName, a Name.                 -
-- PRE: theName has been initialized.        -
-- POST: TheName.first will be updated       -
----------------------------------------------

procedure setFirst(TheName : in out Name; NewName : in String) is
begin
    TheName.MyFirst := NewName;
end setFirst;

----------------------------------------------
-- setMiddle(Name) sets Name.myMiddle        -
-- Receive: theName, a Name.                 -
-- PRE: theName has been initialized.        -
-- POST: TheName.middle will be updated      -
----------------------------------------------

procedure setMiddle(TheName : in out Name; NewName : in String) is
begin
    TheName.MyMiddle := NewName;
end setMiddle;

----------------------------------------------
-- setLast(Name) sets Name.myLast            -
-- Receive: theName, a Name.                 -
-- PRE: theName has been initialized.        -
-- POST: TheName.last will be updated        -
----------------------------------------------

procedure setLast(TheName : in out Name; NewName : in String) is
begin
    TheName.MyLast := NewName;
end setLast;

-----------------------------------------------
-- lfmi(Name) retrieves Name as a String      -
--     ordered last, first middle initial     -
-- Receive: theName, a Name.                  -
-- PRE: theName has been initialized.         -
-- Return: a String representation of theName -
-----------------------------------------------

function lfmi(TheName : in Name) return String is
begin
    return getLast(TheName) & ", " & getFirst(TheName) & " " 
        & TheName.MyMiddle(TheName.MyMiddle'first) & ".";
end lfmi;

----------------------------------------------
-- read(Name) sets MyFirst, MyMiddle, MyLast -
-- Receive: theName, a Name.                 -
-- PRE: theName has been initialized.        -
-- POST: MyFirst, MyMiddle, and MyLast will  -
--      be set to new values read in through -
--      the keyboard                         -
----------------------------------------------

procedure read(TheName : in out Name) is
begin
    Get(TheName.MyFirst);
    Get(TheName.MyMiddle);
    Get(TheName.MyLast);
end read;

end Name_Package;
