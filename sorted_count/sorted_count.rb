# Sorted Count
# Given a sorted array of numbers A and a number X, count the number of times 
# that X occurs in A.


def binary_search array, value, start, ends
	return false if start > ends
	pivote = start + ((ends - start) / 2).floor
	if value == array[pivote]
		return count_repeated array, value, pivote
	elsif value > array[pivote]
		binary_search array, value, pivote+1, ends
	else value < array[pivote]
		binary_search array, value, start, pivote-1
	end
end 

def count_repeated array, value, pivote
	count = 0
	while array[pivote] == value do
		pivote -= 1 
	end
	pivote += 1
	while array[pivote] == value do
		pivote += 1
		count +=1 
	end
	return count 
end

a = [1,2,3,4,4,4,4,5,5,5,5,5,6,6,6,6,6,6,7,7,7,7,7,7,7,8,8,8]  
puts binary_search a, 4, 0, a.size-1
puts binary_search a, 5, 0, a.size-1
puts binary_search a, 6, 0, a.size-1
puts binary_search a, 7, 0, a.size-1
puts binary_search a, 8, 0, a.size-1

#1,2,3,4,5,6  4
#
#1,2,3,4,5,6  4  0, 5 
#1,2,3,4,5,6  4  2, 5 
#
#
#1,2,3,4,5,6  2
#
#
#1,2,3,4,5,6  2  0, 5 
#1,2,3,4,5,6  2  2, 5 