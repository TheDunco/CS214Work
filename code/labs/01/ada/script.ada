Script started on 2020-02-06 14:00:04-0500
]0;djv78@gold01: ~/214/labs/01/ada[01;32mdjv78@gold01[00m:[01;34m~/214/labs/01/ada[00m$ cat circle_area.adb
-- circle_area.adb computes the area of a circle.
--
-- Input: The radius of the circle.
-- Precondition: The radius is a positive number.
-- Output: The area of the circle.
--
-- Begun by: Prof. Adams, CS 214 at Calvin College.
-- Completed by: Duncan Van Keulen
-- Date: 2-6-2020
----------------------------------------------------

with Ada.Text_IO, Ada.Float_Text_IO;
use  Ada.Text_IO, Ada.Float_Text_IO;

procedure circle_area is

   radius, area : float; 

   -- function circleArea computes a circle's area, given its radius
   -- Parameter: r, a float
   -- Precondition: r >= 0.0
   -- Return: the area of the circle whose radius is r
   ----------------------------------------------------
   function circleArea(r: in float) return float is 
      PI : constant := 3.1415927; -- determine pi as a constant
   begin
      return PI * r ** 2; -- calculate the area of the circle given radius
   end circleArea;

begin                           
   New_Line; -- new line in term
   Put_Line("To compute the area of a circle,"); -- writes to terminal w/ newline
   Put("enter its radius: "); -- writes to terminal w/o newline
   Get(radius); -- grabs whatever you type in terminal

   area := circleArea(radius); -- sets assings the area to the output of the circleArea fn

   New_Line; -- new line in term.
   Put("The circle's area is "); -- write to term
   Put(area); -- writes the area to the terminal
   New_Line; New_Line;  -- makes 2 new lines

   Put("The circle's area is "); -- writes to term
   Put(area, 1, 15, 0); -- writes area to terminal with digit arguments?
   New_Line; New_Line; 
end circle_area;
]0;djv78@gold01: ~/214/labs/01/ada[01;32mdjv78@gold01[00m:[01;34m~/214/labs/01/ada[00m$ gnatmake circle_area.adb 
x86_64-linux-gnu-gcc-7 -c circle_area.adb
x86_64-linux-gnu-gnatbind-7 -x circle_area.ali
x86_64-linux-gnu-gnatlink-7 circle_area.ali
]0;djv78@gold01: ~/214/labs/01/ada[01;32mdjv78@gold01[00m:[01;34m~/214/labs/01/ada[00m$ ./circle_area 

To compute the area of a circle,
enter its radius: 1

The circle's area is  3.14159E+00

The circle's area is 3.141592741012573

]0;djv78@gold01: ~/214/labs/01/ada[01;32mdjv78@gold01[00m:[01;34m~/214/labs/01/ada[00m$ ./circle_area 

To compute the area of a circle,
enter its radius: 2

The circle's area is  1.25664E+01

The circle's area is 12.566370964050293

]0;djv78@gold01: ~/214/labs/01/ada[01;32mdjv78@gold01[00m:[01;34m~/214/labs/01/ada[00m$ ./circle_area 

To compute the area of a circle,
enter its radius: 2.5

The circle's area is  1.96350E+01

The circle's area is 19.634954452514648

]0;djv78@gold01: ~/214/labs/01/ada[01;32mdjv78@gold01[00m:[01;34m~/214/labs/01/ada[00m$ ./circle_area 

To compute the area of a circle,
enter its radius: 4.99999

The circle's area is  7.85395E+01

The circle's area is 78.539505004882813

]0;djv78@gold01: ~/214/labs/01/ada[01;32mdjv78@gold01[00m:[01;34m~/214/labs/01/ada[00m$ exit

Script done on 2020-02-06 14:00:56-0500
