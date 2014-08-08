


def matrix_with_zeros matrix 
	column = Array.new
	row = Array.new
	for i in 0..matrix.size-1
		for j in 0..matrix.size-1
			if matrix[i][j] == 0
				column[i] = true
				row[j] = true
			end
		end
	end

	for i in 0..matrix.size-1
		for j in 0..matrix.size-1
			matrix[i][j] = 0 if column[i] == true
			matrix[i][j] = 0 if row[j] == true
		end
	end
end