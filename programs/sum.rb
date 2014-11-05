#!/bin/ruby

# Calculates the sum by adding a sum definition of the Array class
# Brent Walter

class Array
  def sum
    s = 0; each {|x| s = s + x}; s
  end
end

sum = [1,5,3,7].sum
puts sum