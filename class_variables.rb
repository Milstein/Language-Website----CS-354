#!/usr/bin/env ruby
## Class variable and constructor
##
## Milson Munakami
## http://milstein.me

class Student
  @@count = 0
  
  def initialize(id, name)
    @id = id
    @name = name
  end
  
  def student_count
    @@count +=1
    puts "Total student count is: #{@@count}"
  end
end

stud1 = Student.new(1, "Milson Munakami")
stud2 = Student.new(2, "Nisha Shrestha")
stud3 = Student.new(2, "Nisha Shrestha")
stud1.student_count
stud2.student_count
stud3.student_count
