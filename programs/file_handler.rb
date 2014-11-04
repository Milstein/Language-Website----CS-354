#!/usr/bin/env ruby
## Class variable and constructor
##
## Milson Munakami
## http://milstein.me

newFile = File.new("file.txt","r+")
if newFile
  details = newFile.sysread(20)
  puts details  
else 
  puts "You did some mistake or file is not in the same directory"
end

writeFile = File.open("file.txt", "w+")
if writeFile
  writeFile.syswrite("What to write!")
  newFile = File.new("file.txt","r+")
  if newFile
    details = newFile.sysread(20)
    puts details  
  else 
    puts "You did some mistake or file is not in the same directory"
  end  
end

# File.rename("file.txt", "file_rename.txt", "w+")
# File.delete(file.txt)