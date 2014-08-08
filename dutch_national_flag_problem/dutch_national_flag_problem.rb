require "awesome_print"

# Dutch National Flag Problem
# Suppose each of the possible elements could be classified into exactly one of 
# three categories (bottom, middle, and top). For example, if all elements are 
# in 0 ... 1, the bottom could be defined as elements in 0 ... 0.1 
# (not including 0.1), the middle as 0.1 ... 0.3 (not including 0.3) and the
# top as 0.3 and greater. (The choice of these values illustrates that the 
# categories need not be equal ranges). The problem is then to produce an array 
# such that all "bottom" elements come before (have an index less than the 
# index of) all "middle" elements, which come before all "top" elements


Symbols = [:r, :w, :b]
def dnfp array 
	raise "Array is nill " if array == nil
	raise "Array size is not big enough " if array.size < 3
	# check if array contains at least one of the 3 letters 
	top, bottom, index = array.size, -1, 0
	puts top
	while index < top do 
		#puts index
		case array[index] 
			when "r"
				bottom += 1
				swap array, bottom, index
				index += 1
			when "w"
				index += 1
			when "b"
				top -= 1
				swap array, top, index
		end
	end
	array
end

def swap array, index, index2 
	array[index], array[index2]  = array[index2],array[index]
end

a = ["b","b","w","r","b"]
ap dnfp a
a = ["b","r","w"]
ap dnfp a
a = ["w","b","r"]
ap dnfp a
a = ["r","b","w"]
ap dnfp a
#
#puts a