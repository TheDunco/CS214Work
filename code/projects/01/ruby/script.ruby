Script started on 2020-02-06 16:02:45-0500
]0;djv78@gold01: ~/214/projects/01/ruby[01;32mdjv78@gold01[00m:[01;34m~/214/projects/01/ruby[00m$ cat rectangle_area.rb 
#! /usr/bin/ruby
# rectangle_area.rb computes the area of a rectangle given its height and width
# 
# Input: the height and width of a rectangle
# Output: the area of the rectangle.
#
# Based off of CS214 Lab01 : Dr. Adams, for CS 214, at Calvin College.
# Completed by: Duncan Van Keulen 
# Date: 2-6-2020
###############################################################

# function rectangleArea returns a rectangle's area, given its height and width
# Parameters: height, width, numbers
# Returns: the area of a rectangle with corresponding height and width.
def rectangleArea(height, width)
    height * width
end

if __FILE__ == $0
   # Get info, compute and pring area
   puts "To compute the area of a rectangle,"

   print " enter its height: "
   height = gets.chomp.to_f
   print " enter its width: "

   width = gets.chomp.to_f
   print "The rectangle's area is: "
   
   puts rectangleArea(height, width)
end]0;djv78@gold01: ~/214/projects/01/ruby[01;32mdjv78@gold01[00m:[01;34m~/214/projects/01/ruby[00m$ ruby rectangle_area.rb 
To compute the area of a rectangle,
 enter its height: 2
 enter its width: 1
The rectangle's area is: 2.0
]0;djv78@gold01: ~/214/projects/01/ruby[01;32mdjv78@gold01[00m:[01;34m~/214/projects/01/ruby[00m$ ruby rectangle_area.rb 
To compute the area of a rectangle,
 enter its height: 5.5
 enter its width: 10.5
The rectangle's area is: 57.75
]0;djv78@gold01: ~/214/projects/01/ruby[01;32mdjv78@gold01[00m:[01;34m~/214/projects/01/ruby[00m$ ruby rectangle_area.rb 
To compute the area of a rectangle,
 enter its height: .5
 enter its width: 3
The rectangle's area is: 1.5
]0;djv78@gold01: ~/214/projects/01/ruby[01;32mdjv78@gold01[00m:[01;34m~/214/projects/01/ruby[00m$ ruby rectangle_area.rb 
To compute the area of a rectangle,
 enter its height: 2
 enter its width: 8.9999
The rectangle's area is: 17.9998
]0;djv78@gold01: ~/214/projects/01/ruby[01;32mdjv78@gold01[00m:[01;34m~/214/projects/01/ruby[00m$ Cha-ching!
Cha-ching!: command not found
]0;djv78@gold01: ~/214/projects/01/ruby[01;32mdjv78@gold01[00m:[01;34m~/214/projects/01/ruby[00m$ Thanks grader (love you Hey[K[Kyeach[K[K[Kchan)[K)
bash: syntax error near unexpected token `('
]0;djv78@gold01: ~/214/projects/01/ruby[01;32mdjv78@gold01[00m:[01;34m~/214/projects/01/ruby[00m$ exit

Script done on 2020-02-06 16:03:52-0500
