#!/bin/ruby

## Displays the factorial of the given number
##
## Said Barrero

#creates the recursive factorial function
def recursiveFactorial(n)
	if n == 0
		return 1
	else
		return n*recursiveFactorial(n-1)
	end
end

# get the user input
puts "This program will find the factorial of the given n"
puts "Value of n = " 
n = gets.to_i

puts "the recursive-factorial calculation of #{n} is: #{recursiveFactorial(n)}"
