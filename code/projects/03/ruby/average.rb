#! /usr/bin/ruby
# average.rb translates an academic average into a letter grade
# Begun by: Dr. Nelesen, for CS 214 at Calvin College 
# Finished by: Duncan Van Keulen on 2-20-2020 for lab03
################################################################

# Input:  Your average, an integer
# Precondition: average is an integer
# Output: The corresponding letter grade for the average

def average(avg)
    avg /= 10
    case avg
    when 10 then
        'A'
    when 9 then
        'A'
    when 8 then
        'B'
    when 7 then
        'C'
    when 6 then
        'D'
    else 'F'
    end
end
 
 if __FILE__ == $0
    print "Enter the average: " # Prompt for input
    avg = gets                  # Get input
    avg = avg.to_i              # Convet to integer
    print "Your letter grade is: "
    puts average(avg)           # Display output of average fn
 end
 
 