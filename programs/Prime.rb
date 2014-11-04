#!/bin/ruby

## Displays all of the prime numbers from 0 to n (inclusive)
##
## Aaron Russell
##

# Determines whether or not a number is prime
def isPrime(n)

	if n < 2
		return false
	end
	if n == 2
		return true
	end
	if n % 2 == 0
		return false
	end

	i = 3
	while i <= Math.sqrt(n) do
		if (n % i == 0)
			return false
		end
		i = i + 2
	end

	return true

end

# get user input
puts "This program will find all prime numbers up to n (inclusive)."
puts "n = ?"
n = gets.to_i

for i in 0..n do
	if isPrime(i)
		puts "#{i}"
	end
end

