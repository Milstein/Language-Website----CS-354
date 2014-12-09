require './LinkedList.rb'

print "**********  LinkedListTester  **********\n"


## Create List
list = LinkedList.new()

help = "Commands:\n"
help += "\tinsertFront <element> | inserts element at front of list\n"
help += "\tinsertRear <element> | inserts element at rear of list\n"
help += "\tremoveFront | removes element at front of list\n"
help += "\tremoveRear | removes element at front of list\n"
help += "\tremoveElement <element> | removes the element from the list\n"
help += "\tsearch <element> | searches for element in list\n"
help += "\tlist | prints the list\n"
help += "\tclear | clears the list and starts fresh\n"
help += "\thelp | displays commands\n"
help += "\texit | exits prompt\n"

print "\n"
print help

prompt = "> "
puts "\n"
print prompt

while user_input = gets.chomp
	case user_input
	when /insertFront/
    	list.insertFront(user_input.partition('insertFront ').last)
    	print prompt
	when /insertRear/
    	list.insertRear(user_input.partition('insertRear ').last)
    	print prompt
	when /removeFront/
    	list.removeFront()
    	print prompt
    when /removeRear/
    	list.removeRear()
    	print prompt
    when /removeElement/
    	list.removeElement(user_input.partition('removeElement ').last)
    	print prompt
	when /search/
    	puts list.search(user_input.partition('search ').last)
    	print prompt
    when "clear"
    	list = LinkedList.new()
    	puts "list cleared\n"
    	print prompt
	when "help"
    	puts help
    	print prompt
    when "list"
    	puts list.to_s
    	print prompt
    when "exit"
    	print "**********  LinkedListTester Finished  **********\n"
    	break
	else
    	puts "Invalid entry - type help for commands"
    	print prompt # print the prompt, so the user knows to re-enter input
  	end
end