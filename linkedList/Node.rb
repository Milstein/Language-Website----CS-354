
## Represents a node within a linked list
class Node

	## Initializes the node
	def initialize(data)
		@data = data
		@prev = nil
		@next = nil
	end
	
	## Gets the data stored by the node
	def getData
		return @data
	end
	
	## Gets the node pointed to by prev
	def getPrev
		return @prev
	end
	
	## Gets the node pointed to by next
	def getNext
		return @next
	end
	
	## Sets the node's next pointer to another node
	def setNext(node)
		@next = node
	end
	
	## Sets the node's previous pointer to another node
	def setPrev(node)
		@prev = node
	end
	
end
