# array_util.rb implements filling an array with user vals and printing that array
# 
# Input: user values into the array
# Output: the values of the array
#
# By: Duncan Van Keulen
# Date: 3-12-2020
########################################################

###############################################
# readArray() reads in values from a user and puts them in an array
# Receive: anArray, an array of numbers
# Recieve: itsSize, the size of the array
################################################

def readArray(anArray, itsSize)
    i = 0
    until i >= itsSize do
        anArray.push(gets.chomp)
        i = i + 1
    end
    return anArray
end

###############################################
# printArray() outputs the contents of the array separated by newlines
# Receive: anArray, an array of numbers
################################################

def printArray(anArray)
    anArray.each do |num|
        puts num
    end
end

def main
    # Get size
    print("Enter the size of the array: ")
    itsSize = gets.to_f

    theArray = Array.new(itsSize){}
    print("Enter the values of the array: ")
    theArray = readArray(theArray, itsSize)
    puts("The values of the array are...")
    printArray(theArray)

end

main
