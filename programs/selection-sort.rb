#!/usr/bin/ruby
#
## author: Said Barrero
## note: change numbers below array to see different results of this algorithm

	def selection-sort(array, p, r)
        largest=0;
 
        if p < r
			largest = p
       		for i in p+1..r do
       			if array[i] >= array[largest]
            		largest = i
				end
       		end
 
      	temp = array[r]
        array[r] = array[largest]
      	array[largest] = temp
 
        selectionSort(array,p,r - 1)
		end
    end

puts 'This is a simple selection sort example'
    numbers = [1,5,3,2,6]
 
    p = 0
    r = numbers.size - 1

selectionSort(numbers, p, r)
puts numbers
