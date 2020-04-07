-- namer.adb "test-drives" the Name type.
-- Begun by: Prof. Adams, CS 214 at Calvin College.
-- Completed by: Duncan Van Keulen 
-- For Proj07
-- Date: 4-6-2020
----------------------------------------------

with Ada.Text_IO; use Ada.Text_IO;

procedure name_tester is

    NAME_SIZE : constant Integer := 8;

    type Name is 
        record
            MyFirst, MyMiddle, MyLast : String(1..NAME_SIZE);
        end record;

aName : Name ;

----------------------------------------------
-- Init initializes a Name variable          -
-- Receive: theName, the Name variable;      -
--          First, the first name;           -
--          Middle, the middle name;         -
--          Last, the last name.             -
-- Return: theName, its fields set to First, -
--               Middle, and Last.           -
----------------------------------------------

procedure Init(TheName : out Name;
    First, Middle, Last : in String) is    

begin
    TheName.MyFirst := First;
    TheName.MyMiddle := Middle;
    TheName.MyLast := Last;
end Init;


----------------------------------------------
-- getFirst(Name) retrieves Name.myFirst     -
-- Receive: theName, a Name.                 -
-- PRE: theName has been initialized.        -
-- Return: theName.myFirst.                  -
----------------------------------------------

function getFirst(TheName : in Name) return String is
begin
    return TheName.myFirst;
end getFirst;

function getMiddle(TheName : in Name) return String is
begin
    return TheName.myMiddle;
end getMiddle;

function getLast(TheName : in Name) return String is
begin
    return TheName.myLast;
end getLast;


-----------------------------------------------
-- getFullName(Name) retrieves Name as a String  -
-- Receive: theName, a Name.                  -
-- PRE: theName has been initialized.         -
-- Return: a String representation of theName -
-----------------------------------------------

function getFullName(TheName : in Name) return String is
begin
    return getFirst(TheName) & ' ' & getMiddle(TheName) & ' ' & getLast(TheName);
end getFullName;

----------------------------------------------
-- Put(Name) displays a Name value.          -
-- PRE: theName has been initialized.        -
-- Receive: theName, a Name.                 -
-- Output: theName, to the screen.           -
----------------------------------------------

procedure Put(TheName : in Name) is
begin
    Put(getFullName(TheName));
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

begin
    Init(aName, "John    ", "Paul    ", "Jones   ");

    pragma Assert( getFirst(aName) = "John    ", "getFirst() failed");
    pragma Assert( getMiddle(aName) = "Paul    ", "getMiddle() failed");
    pragma Assert( getLast(aName) = "Jones   ", "getLast() failed");
    pragma Assert( getFullName(aName) = "John     Paul     Jones   ", "getFullName() failed");

    Put(aName); New_line;

    -- "Setter" testers
    setFirst(aName, "Phillip ");
    setMiddle(aName, "Joseph  ");
    setLast(aName, "Bray    ");
    pragma Assert(  getFirst(aName) = "Phillip ", "setFirst() failed");
    pragma Assert( getMiddle(aName) = "Joseph  ", "setMiddle() failed");
    pragma Assert( getLast(aName) = "Bray    ", "setLast() failed");

    read(aName);
    pragma Assert(  getFirst(aName) = "Jane    ", "setFirst() failed");
    pragma Assert( getMiddle(aName) = "Renee   ", "setMiddle() failed");
    pragma Assert( getLast(aName) = "Doe     ", "setLast() failed");
    pragma Assert( lfmi(aName) = "Doe     , Jane     R.");
    pragma Assert( getFullName(aName) = "Jane     Renee    Doe     ", "getFullName() failed");

    Put("All tests passed!"); New_line;

end name_tester;

