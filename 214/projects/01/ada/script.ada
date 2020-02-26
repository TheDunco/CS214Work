Script started on 2020-02-06 15:14:34-0500
]0;djv78@gold01: ~/214/projects/01/ada[01;32mdjv78@gold01[00m:[01;34m~/214/projects/01/ada[00m$ cat rectangle_area.adb
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
end rectangle_area;]0;djv78@gold01: ~/214/projects/01/ada[01;32mdjv78@gold01[00m:[01;34m~/214/projects/01/ada[00m$ gna[K[K[Kgnatmake -m cat rectangle_area.adbSweet![Kjava RectangleArea [19@c -deprecation RectangleArea.jav[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[15Pcat[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[Kjava RectangleArea [19@c -deprecation RectangleArea.jav[C[C[19P RectangleAre[C[C[1Pcat RectangleArea.java [15@javac -deprecation[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[19P RectangleAre[C[CSweet![Kcat rectangle_area.adb[10Pgnatmake -m rectangle_area.adb 
gnatmake: "rectangle_area" up to date.
]0;djv78@gold01: ~/214/projects/01/ada[01;32mdjv78@gold01[00m:[01;34m~/214/projects/01/ada[00m$ gnatmake -m rectangle_area.adb 
gnatmake: "rectangle_area" up to date.
]0;djv78@gold01: ~/214/projects/01/ada[01;32mdjv78@gold01[00m:[01;34m~/214/projects/01/ada[00m$ ./rectangle_area 

To compute the area of a rectangle,
enter its height: 2
enter its width: 1

The rectangle's area is 2.000000000000000

]0;djv78@gold01: ~/214/projects/01/ada[01;32mdjv78@gold01[00m:[01;34m~/214/projects/01/ada[00m$ ./rectangle_area 

To compute the area of a rectangle,
enter its height: 5.5
enter its width: 10.5

The rectangle's area is 57.750000000000000

]0;djv78@gold01: ~/214/projects/01/ada[01;32mdjv78@gold01[00m:[01;34m~/214/projects/01/ada[00m$ ./rectangle_area 

To compute the area of a rectangle,
enter its height: .5  
enter its width: 3

The rectangle's area is 1.500000000000000

]0;djv78@gold01: ~/214/projects/01/ada[01;32mdjv78@gold01[00m:[01;34m~/214/projects/01/ada[00m$ ./rectangle_area 

To compute the area of a rectangle,
enter its height: 2
enter its width: 8.9999

The rectangle's area is 17.999799728393555

]0;djv78@gold01: ~/214/projects/01/ada[01;32mdjv78@gold01[00m:[01;34m~/214/projects/01/ada[00m$ EPIC!!!
EPIC./rectangle_area !
bash: EPIC./rectangle_area: No such file or directory
]0;djv78@gold01: ~/214/projects/01/ada[01;32mdjv78@gold01[00m:[01;34m~/214/projects/01/ada[00m$ exit

Script done on 2020-02-06 15:16:28-0500
