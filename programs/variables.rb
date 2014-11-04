#!/usr/bin/env ruby
## Global variable example
##
## Milson Munakami
## http://milstein.me
$global_var = 1

class ClassOne
  def print_global_var
    puts "Global variable in class one #$global_var"
  end
end

class ClassTwo
  def print_global_var
    puts "Global variable in class one #{$global_var}"
  end
end



obj1 = ClassOne.new
obj1.print_global_var
obj2 = ClassOne.new
obj2.print_global_var()
