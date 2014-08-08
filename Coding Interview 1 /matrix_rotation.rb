require "awesome_print"
matrix = [[1, 2, 3], [4, 5, 6],[7,8,9]]

#1 2 3
#4 5 6
#7 8 9

#7 8 3
#4 5 2 
#9 6 1 

#ap matrix 
def rotate_matrix matrix
	layer = 0
	for layer in 0..(matrix.size / 2).ceil
		last = matrix.size - 1 - layer
		for i in layer..last-1  # not sure here 
			offset = i - layer
			top = matrix[layer][i]

			matrix[layer][i] = matrix[last - offset ][layer] #7 4

			matrix[last - offset][layer] = matrix[ last ][ last - offset ] #9 8

			matrix[ last ][ last - offset] = matrix[ i ][last ] #3 6

			#top -> right
			puts i
			puts last
			matrix[ i ][ last] = top
		end
	end

end

rotate_matrix matrix
ap matrix 