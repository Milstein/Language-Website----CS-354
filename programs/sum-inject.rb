#!/bin/ruby

# Calculates the sum by using the inject method
# Brent Walter

def sumArray(a)
  a.inject(0) { |sum, value| sum + value }
end

puts sumArray([1,5,3,7])