-- year_codes.adb converts academic year codes to corresponding years.
--
-- Begun by: Dr. Adams, for CS 214 at Calvin College.
-- Completed by Duncan Van Keulen for Lab 03 on 2-20-2020
--
-- Input: year, a string
-- Precondition: year is one of "freshman", "sophomore", "junior", "senior"
-- Output: The year code (1, 2, 3 or 4) corresponding to year.
----------------------------------------------------

with Ada.Text_IO, Ada.Integer_Text_IO;
use  Ada.Text_IO, Ada.Integer_Text_IO;

procedure year_codes is

   year : String(1..9) := "         ";
   charsRead : Natural;

function yearCode(year : in String) return Integer is
begin
   if year = "freshman " then  -- added padding for a string lengh of 9
      return 1;
   elsif year = "sophomore" then
      return 2;
   elsif year = "junior   " then
      return 3;
   elsif year = "senior   " then
      return 4;
   else return 0;
   end if;
end yearCode;

begin                                          
   Put("Enter your academic year: ");           -- Prompt for input
   Get_Line(year, charsRead);                   -- Input
   Put( yearCode(year) );                       -- Convert and output
   New_Line;
end year_codes;

