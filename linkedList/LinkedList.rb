
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
	
	## Removes a node based on the element from the list 
	def removeObject(element)
		
		#check if the size is 1
		if @size == 1
			@head = nil
			@tail = nil
			@size = 0
	
		#check if we are removing the head 
		elsif @head.getData == element
			@head = @head.getNext
			@head.getPrev = nil
			size -= 1
		
		#check if we are removing the tail
		elsif @tail.getData == element
			@tail = @tail.getNext
			@tail.getPrev = nil
			size -= 1

		else
            
			size-= 1
			



	## Searches for a node and returns it based finding the given element 	
   	def search(element) 
		if @size < 1
        	return nil
		end
	   	curr = @head 
		
		while curr != nil do
			if curr.getData == element
				return curr
			end
			curr = curr.getNext
    	end
		return nil
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
