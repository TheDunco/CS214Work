# NameTester.rb tests class Name and its operations
#
# Begun by: Dr. Adams, for CS 214 at Calvin College.
# Completed by: Duncan Van Keulen
# For Proj07
# Date: 4-6-2020
####################################################

require 'test/unit/assertions'   # needed for assert
include Test::Unit::Assertions

class Name 

   def initialize(first, middle, last)
      @first, @middle, @last = first, middle, last
   end

   # accessor methods
   attr_reader :first, :middle, :last

   # setter methods
   attr_writer :first, :middle, :last

   def fullName()
      first +  ' ' + middle + ' ' + last
   end

   def print
      puts(fullName())
      return fullName()
   end

   def lfmi
      return last + ", " + first + " " + middle[0] + ".";
   end

   # Change the values by reading them in from the keyboard
   def read
      @first = gets.chomp
      @middle = gets.chomp
      @last = gets.chomp
   end
end


def testName
   # Test the getters
   name = Name.new("John", "Paul", "Jones")

   assert name.first == "John", "first failed"
   assert name.middle == "Paul", "middle failed"
   assert name.last == "Jones", "last failed"
   assert name.fullName == "John Paul Jones", "fullName failed"
   assert name.print == "John Paul Jones", "print failed"

   # Setters and LFMI tests
   name.first = "Phillip"
   name.middle = "Joseph"
   name.last = "Wheelwright"

   assert name.first == "Phillip"
   assert name.middle == "Joseph"
   assert name.last == "Wheelwright"
   assert name.lfmi == "Wheelwright, Phillip J."

   # Read test
   name.read
   name.print
   assert name.first == "Jane"
   assert name.middle == "Renee"
   assert name.last == "Doe"
   
   print "All tests passed!\n"
end

testName

