
require './Node.rb'

## Represents a doubly-linked, null-terminated list
class LinkedList

	## Initializes the list
	def initialize
		@size = 0
		@head = nil
		@tail = nil
	end
	
	## Inserts an element at the beginning of the list 
	def insertFront(element)
	
		node = Node.new(element)
		
		if @size == 0
			@head = node
			@tail = node
		else
			@head.setPrev(node)
			node.setNext(@head)
			@head = node
		end
		
		@size += 1
		
	end
	
	## Inserts an element at the end of the list
	def insertRear(element)
	
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
    
    ## Removes an element from the beginning of the list
    def removeFront()
       
       if @size > 1
            node = @head
            @head = node.getNext()
            @head.setPrev(nil)
            @size -= 1
       elsif @size == 1
            @head = nil
            @tail = nil
            @size = 0
       end
       
    end
    
    ## Removes an element from the end of the list
    def removeRear()
        if @size > 1
            node = @tail
            @tail = node.getPrev()
            @tail.setNext(nil)
            @size -= 1
        elsif @size == 1
            @head = nil
            @tail = nil
            @size = 0
        end
        
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
