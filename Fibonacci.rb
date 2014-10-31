#!/bin/ruby

## Displays F(n) of the Fibonacci sequence, assuming F(0) = 0 and
## F(1) = 1
##
## Aaron Russell
##

# Finds F(n) recursively
def fibonacciRecursive(n)
	if n <= 1
		return n
	else
		return fibonacciRecursive(n - 1) + fibonacciRecursive(n - 2)
	end
end

# Finds F(n) iteratively
def fibonacciIterative(n)
	if n <= 1
		return n
	else
		x = 0
		y = 1
		count = 0
		while count < n do
			tmp = y
			y = x + y
			x = tmp
			count = count + 1
		end
		return x
	end
end

# get user input
puts "n = ?"
n = gets.to_i

puts "fibonacciRecursive(#{n}) = #{fibonacciRecursive(n)}"
puts "fibonacciIterative(#{n}) = #{fibonacciIterative(n)}"

