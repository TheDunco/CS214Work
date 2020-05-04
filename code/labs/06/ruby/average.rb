# average.rb averages the values of an array of doubles.
# Precondition: theArray is an array of numbers
# Output: the average of the values in theArray
#
# Begun by: Dr. Adams, for CS 214 at Calvin College.
# Completed by:: Duncan Van Keulen
# Date: 3-12-2020
########################################################

###############################################
# sum() sums the values in an array
# Receive: anArray, an array of numbers
# Return: the sum of the values in anArray.
################################################

def sum(anArray)
   total = 0
   anArray.each{ | val | total = total + val}
   return total
end

###############################################
# average() averages the values in an array
# Receive: anArray, an array of numbers
# Return: the average of the values in anArray.
################################################
def average(anArray)
   avg = 0
   sum = sum(anArray)
   if (anArray.length > 0) then
      avg = sum / anArray.length
   else
      return 0
   end
end

def main
   # Define array0 as an Array containing no values
   array0 = Array.new(0){}
   # Define array1 as an Array containing 9.0, 8.0, 7.0, 6.0
   array1 = Array[9.0, 8.0, 7.0, 6.0]



puts "sum 0 is: #{ sum(array0) }\n"
puts "sum 1 is: #{ sum(array1) }\n"

puts "average 0 is: #{ average(array0) }\n"
puts "average 1 is: #{ average(array1) }\n"
end

main

