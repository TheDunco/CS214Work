# roots.rb calculates the roots of a quadratic function
#
# Input: a, b, c: doubles representing a, b, and c in the quadratic formula.
# Precondition: a != 0, b^2 - 4ac not negative.
# Output: the roots of the quadratic function
#
# By: Duncan Van Keulen
# Date: 3-9-2020
#################################################################


# roots() calculates the roots of a quadratic function.
# Receive: a, b, c doubles representing a, b, and c of quadratic formula          
# PRE: a != 0, b^2 - 4ac not negative.
# Return: the roots of the quadratic function in a vector along with a bool
#         indicating if it succeeded
######################################################

def roots(a, b, c)
    # Make sure a is not 0
    if (a != 0) then
        # Calculate the discriminant
        arg = b**2 - 4 * a * c

        # If discriminant is not negative
        if (arg >= 0) then
            # Calculate the roots
            root1 = (-b + Math.sqrt(arg))/(2*a)
            root2 = (-b - Math.sqrt(arg))/(2*a)
            # Return an array indicating 
            return Array[root1, root2, true]
        
        # Discriminant is negative
        else 
            puts "Error: roots(): b^2 - 4ac is negative!"
            root1 = root2 = 0
            return Array[0, 0, false]
        end
    # a is 0
    else
        puts "Error: roots(): a is zero!"
        root1 = root2 = 0
        return Array[0, 0, false]
    end
end

def main
    # Get a
    print "To calculate the roots of a quadratic,\nEnter a: "
    a = gets.to_f

    # Get b
    print "Enter b: "
    b = gets.to_f

    # Get c
    print "Enter c: "
    c = gets.to_f

    # Get the roots
    result = roots(a, b, c)

    # If it suceeded, print out the formatted results
    if result[2] == true then
        puts "The roots are %0.5f and %0.5f" % [result[0], result[1]]
    end
end

main


