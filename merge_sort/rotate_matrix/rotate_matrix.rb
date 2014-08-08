
#Given an image represented by an NxN martix, where each pixel in the image is 4
#bytes, write a methid to rotate the image by 90 degress, Can you do it inplace?

a = [[1,2,3],[4,5,6],[7,8,9]]

1 2 3
4 5 6
7 8 9


layer,first 
size, 0 

tmp = 1
7 2 3
4 5 6
7 8 9
def rotate_matrix matrix
	size = (matrix.size / 2).ceil 
	for layer in 0..size
		int last = n - 1 - layer
		for i in layer..last
			offset = i - layer

			top = matrix[layer][i]
			matrix[layer][i] = matrix[last-offset][layer]
			matrix[last-offset][layer] = matrix[last][last-offset]
			matrix[last][last-offset] = matrix[i][last]
			matrix[i][last] = top
		end
	end
end



