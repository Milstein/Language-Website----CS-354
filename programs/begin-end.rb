#!/bin/ruby
## BEGIN and END execution
##
## Milson Munakami
## http://milstein.me

puts "hello world"

# this is a comment

END{
	puts "this is the end block"
}

BEGIN{
	puts "this is the begin block"
}