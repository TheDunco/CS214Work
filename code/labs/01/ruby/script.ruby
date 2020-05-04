Script started on 2020-02-06 14:24:53-0500
]0;djv78@gold01: ~/214/labs/01/ruby[01;32mdjv78@gold01[00m:[01;34m~/214/labs/01/ruby[00m$ cat circle_area.rb 
#! /usr/bin/ruby
# circle_area.rb computes the area of a circle given its radius
# 
# Input: the radius of a circle
# Precondition: the radius is not negative
# Output: the area of the circle.
#
# Begun by: Prof. Adams, for CS 214 at Calvin College.
# Completed by: Duncan Van Keulen
# Date: 2-6-2020
###############################################################

# function circleArea returns a circle's area, given its radius
# Parameters: r, a number
# Precondition: r > 0.
# Returns: the area of a circle whose radius is r.
PI = 3.1415927
def circleArea(r)
    PI * r ** 2 
end

if __FILE__ == $0
   puts "To compute the area of a circle,"
   print " enter its radius: "
   radius = gets.chomp.to_f
   print "The circle's area is: "
   puts circleArea(radius)
end]0;djv78@gold01: ~/214/labs/01/ruby[01;32mdjv78@gold01[00m:[01;34m~/214/labs/01/ruby[00m$ ruby circle_area.rb 
To compute the area of a circle,
 enter its radius: 1
The circle's area is: 3.1415927
]0;djv78@gold01: ~/214/labs/01/ruby[01;32mdjv78@gold01[00m:[01;34m~/214/labs/01/ruby[00m$ ruby circle_area.rb 
To compute the area of a circle,
 enter its radius: 2
The circle's area is: 12.5663708
]0;djv78@gold01: ~/214/labs/01/ruby[01;32mdjv78@gold01[00m:[01;34m~/214/labs/01/ruby[00m$ ruby circle_area.rb 
To compute the area of a circle,
 enter its radius: 2.7 6 5
The circle's area is: 19.634954375
]0;djv78@gold01: ~/214/labs/01/ruby[01;32mdjv78@gold01[00m:[01;34m~/214/labs/01/ruby[00m$ ruby circle_area.rb 4.99999
To compute the area of a circle,
 enter its radius: [1mTraceback[m (most recent call last):
	2: from circle_area.rb:25:in `<main>'
	1: from circle_area.rb:25:in `gets'
circle_area.rb:25:in `gets': [1mNo such file or directory @ rb_sysopen - 4.99999 ([1;4mErrno::ENOENT[m[1m)
[m]0;djv78@gold01: ~/214/labs/01/ruby[01;32mdjv78@gold01[00m:[01;34m~/214/labs/01/ruby[00m$ oops

Command 'oops' not found, did you mean:

  command 'kops' from snap kops (1.18.0-alpha.2)

See 'snap info <snapname>' for additional versions.

]0;djv78@gold01: ~/214/labs/01/ruby[01;32mdjv78@gold01[00m:[01;34m~/214/labs/01/ruby[00m$ oopsruby circle_area.rb 4.99999[K[K[K[K[K[K[K[K
To compute the area of a circle,
 enter its radius: 4.99999
The circle's area is: 78.53950334104417
]0;djv78@gold01: ~/214/labs/01/ruby[01;32mdjv78@gold01[00m:[01;34m~/214/labs/01/ruby[00m$ Sorry for the screw up there... peace yo
Sorry: command not found
]0;djv78@gold01: ~/214/labs/01/ruby[01;32mdjv78@gold01[00m:[01;34m~/214/labs/01/ruby[00m$ exit

Script done on 2020-02-06 14:26:22-0500
