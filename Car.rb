#!/bin/ruby

## Creates two car objects and demonstrates the functionality of Car
## objects
##
## Aaron Russell
##

# Represents a car
class Car

	def initialize(make, model, year, mileage)
		@make = make
		@model = model
		@year = year
		@mileage = mileage
	end

	def getAge
		t = Time.new
		return t.year - @year
	end

	def toString
		return "#{@year} #{@make} #{@model} with #{@mileage} miles"
	end

end

car1 = Car.new("Subaru", "Forester", 2000, 148000)
car2 = Car.new("Jeep", "Wrangler", 2003, 100500)

puts car1.toString
puts "\t#{car1.getAge} years old"
puts car2.toString
puts "\t#{car2.getAge} years old"

