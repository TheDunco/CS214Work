# max.rb tests a Ruby linked list.
#
# Begun by: Dr. Adams for CS 214 at Calvin College.
# Completed by: Duncan Van Keulen
# Date: 4/20/2020

require './List'

list1 = List.new
list2 = List.new
list3 = List.new
list4 = List.new

list1.append(99).append(88).append(77).append(66).append(55)
list2.append(55).append(66).append(77).append(88).append(99)
list3.append(55).append(77).append(99).append(88).append(66)
list4.append(11).append(22).append(33).append(44).append(55) # 99 not present

# Print function
list1.print 
puts
puts "Maximum of list1: #{list1.max}"

list2.print 
puts
puts "Maximum of list2: #{list2.max}"

list3.print 
puts
puts "Maximum of list3: #{list3.max}"

# Test out the search function
list1.print
puts
puts "99 is in position #{list1.search(99)} for list1"

list2.print
puts
puts "99 is in position #{list2.search(99)} for list2"

list3.print
puts
puts "99 is in position #{list3.search(99)} for list3"

list4.print
puts
if (list4.search(99) == -1)
    puts "99 not present in list4, -1 returned"
end

