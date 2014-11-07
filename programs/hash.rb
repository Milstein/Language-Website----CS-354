#!/usr/bin/ruby

## Demonstrate some hash functionalites

## Jimmy Wang

classrating = {}
classrating["CS354"] = :Great
classrating["CS471"] = :Perfect
classrating["CS361"] = :Good
classrating["CS497"] = :Perfect
classrating["CS464"] = :Good
classrating["CS410"] = :Good

print classrating.length
print "\n"
print classrating["CS471"]
print "\n"
print classrating["CS410"]
print "\n"

counts = Hash.new(0)
classrating.values.each { |rate| counts[rate] += 1 }
print counts
