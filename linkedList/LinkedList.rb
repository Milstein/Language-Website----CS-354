
require './Node.rb'

## Represents a doubly-linked, null-terminated list
class LinkedList

	## Initializes the list
	def initialize
		@size = 0
		@head = nil
		@tail = nil
	end
	
	## Inserts an element into the list
	def insert(element)
	
		node = Node.new(element)
		
		if @size == 0
			@head = node
			@tail = node
		else
			@tail.setNext(node)
			node.setPrev(@tail)
			@tail = node
		end
		
		@size += 1
		
	end
	
	## Generates a string representation of the list
	def to_s
	
		curr = @head
		str = ""
		
		while curr != nil do
			str += curr.getData.to_s
			str += "\n"
			curr = curr.getNext
		end
		
		return str
		
	end
	
end
