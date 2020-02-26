-- rectangle_area.adb computes the area of a rectangle.
--
-- Input: The height and width of a rectangle
-- Output: The area of the rectangle.
--
-- Based off of CS214 Lab01 : Dr. Adams, for CS 214, at Calvin College.
-- Completed by: Duncan Van Keulen 
-- Date: 2-6-2020
----------------------------------------------------

with Ada.Text_IO, Ada.Float_Text_IO;
use  Ada.Text_IO, Ada.Float_Text_IO;

procedure rectangle_area is

   height, width, area : float; 

   -- function rectangleArea computes a rectangle's area, given its height and width
   -- Parameter: height, width: floats
   -- Return: the area of the rectangle
   ----------------------------------------------------
   function rectangleArea(height: in float; width: in float) return float is 
   begin
      return height * width;
   end rectangleArea;

begin    
   -- get input from the user                       
   New_Line;
   Put_Line("To compute the area of a rectangle,");
   Put("enter its height: ");
   Get(height);
   Put("enter its width: ");
   Get(width);

   -- Calculate area using rectangleArea function
   area := rectangleArea(height, width);

   -- output
   New_Line;
   Put("The rectangle's area is ");
   Put(area, 1, 15, 0);
   New_Line; New_Line;  
end rectangle_area;