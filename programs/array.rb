#!/usr/bin/ruby

## Demonstrate some basic methods of arrays in ruby.

## Jimmy Wang

shad = ["Milson", "Aaron", "Brent", "Said", "Jimmy"]
shad.pop
print shad
shad.push("Jimmy")
print shad
shad.shift
print shad
shad.unshift("Milson")
print shad
print "++++++++++++++++++\n"

la = []
la[3] = "Prolog"
la[4] = "AWK"
la[5] = "C#"
print la.length
print "\n"
la.each {|i| print i, "\n"}
print "++++++++++++++++++\n"
la[1] = "Scheme"
la.each {|i| print i, "\n"}
