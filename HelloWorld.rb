#!/usr/bin/ruby

class HelloWorld

	def initialize(str)
		@str = str
	end

	def sayHello
		puts "#{@str}"
	end

end

hello = HelloWorld.new("Hello, world!")
hello.sayHello

