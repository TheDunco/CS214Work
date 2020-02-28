#! /usr/bin/ruby
# factorial.rb displays the factorial of the input number
#
# By: Duncan Van Keulen on 2-27-2020
#
# Input: n, a number
# Precondition: n is positive
# Output: the factorial of n


if __FILE__ == $0
    # Get an integer input for each variable
    print "Enter a number n: "
    n = gets.chomp.to_f 
    i = 2
    answer = 1

    while (i <= n)
        answer = answer*i   # multiply to compute factorial
        i = i + 1           # increment i
    end

    puts("#{n}! = #{answer}") # output result
 
 end