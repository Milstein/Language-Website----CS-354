#!/usr/bin/env ruby

## Demo general Ruby file structure with iteration
##
## Milson Munakami
## http://milson.com.np

class MegaGreeter
	attr_accessor :names

	def initialize(names = "World")
		@names = names
	end

	def say_hi
		if @names.nil?
			puts "..."
		elsif @names.respond_to?("each")
			@names.each do |name|			
				puts "Hi #{name}"
			end
		else 
			puts "Hi #{@names}"
		end
	end

	def say_bye
		if @names.nil?
			puts "..."
		elsif @names.respond_to?("join")
			puts "#{@names.join(", ")} Come back soon"
		else
			puts "#{@names} come back soon"
		end
	end
end

if __FILE__ == $0
	
	mg = MegaGreeter.new
	mg.say_hi
	mg.say_bye

	mg.names="Milson"
	mg.say_hi
	mg.say_bye

	mg.names = ["Jimmy", "Arther", "Ning"]
	mg.say_hi
	mg.say_bye

	mg.names=nil
	mg.say_hi
	mg.say_bye
end

