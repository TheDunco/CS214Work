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
end