#!/usr/bin/env ruby
## Yield to format Local variables
##
## Milson Munakami
## http://milstein.me

def Sample
  puts "This is line 1"
  yield
  puts "This is line 2"
  yield
end

def a_list(array, first = 1)
  count =first
  array.each do |item|
    puts "#{yield count}. #{item}"
    count = count.next
  end
end

Sample {puts "This is block"}
# a_list(["python", "ruby", "shell"], 1)
# a_list(["python", "ruby", "shell"], 30)
# a_list(["python", "ruby", "shell"], "a")
# a_list(["python", "ruby", "shell"], "z")

a_list(["abc", "def","ghk"],10){|i| "<#{i}>"}