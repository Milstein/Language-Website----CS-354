#!/usr/bin/ruby

## Strings in ruby with fancy methods.

## Jimmy Wang

mystring=""
shad = ["Milson", "Aaron", "Brent", "Said", "Jimmy"]
shad.each {|i| mystring << i+" "}
mystring.strip
print mystring, "\n"

shad.reverse
print shad, "\n"
shad.reverse!
print shad, "\n"

downshad = shad.to_s.downcase
print downshad, "\n"

mystring = "Shad " * 3
print mystring, "\n"
