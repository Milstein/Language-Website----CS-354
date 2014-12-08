
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
    
    ## Removes the element at the beginning of the list
    def removeFront()
    
        if @size > 1
            retVal = @head.getData
            @head = @head.getNext()
            @head.setPrev(nil)
            @size -= 1
        elsif @size == 1
            retVal = @head.getData
            clear
        else
            retVal = nil
        end
        
        return retVal
        
    end
    
    ## Removes the element at the end of the list
    def removeRear()
    
        if @size > 1
            retVal = @tail.getData
            @tail = @tail.getPrev()
            @tail.setNext(nil)
            @size -= 1
        elsif @size == 1
            retVal = @tail.getData
            clear
        else
            retVal = nil
        end
        
        return retVal
        
    end
    
    ## Removes the given element from the list 
    def removeElement(element)
    
        if @size == 0
            return nil
        end
        
        ## try to find the element in the list
        curr = @head
        while curr != nil
            if curr.getData == element
            
                ## if the head contains the element
                if curr == @head
                    return removeFront
                end
                ## if the tail contains the element
                if curr == @tail
                    return removeRear
                end
                
                curr.getPrev.setNext(curr.getNext)
                curr.getNext.setPrev(curr.getPrev)
                @size -= 1
                return curr.getData
                
            else
                curr = curr.getNext
            end
        end
        
        ## if the element wasn't found, return nil
        return nil
        
    end
    
    ## Searches the list for the given element
    def search(element)
    
        curr = @head
        while curr != nil
            if curr.getData == element
                return curr.getData
            else
                curr = curr.getNext
            end
        end
        
        ## if the element wasn't found, return nil
        return nil
        
    end
    
    ## Clears the list
    def clear
        @size = 0
        @head = nil
        @tail = nil
    end
    
    ## Generates a string representation of the list
    def to_s
    
        curr = @head
        str = "null"
        
        while curr != nil
            str += "<-->"
            str += curr.getData.to_s
            curr = curr.getNext
        end
        str += "<-->null"
        
        return str
        
    end
    
end
