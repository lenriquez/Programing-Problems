 # Problem https://www.codeeval.com/open_challenges/87/
 # Description: There is a board (matrix). Every cell of the board contains one integer, which is 0 initially. 

 # The next operations can be applied to the Query Board: 
 # SetRow i x: it means that all values in the cells on row "i" have been changed to value "x" after this operation. 
 # SetCol j x: it means that all values in the cells on column "j" have been changed to value "x" after this operation. 
 # QueryRow i: it means that you should output the sum of values on row "i". 
 # QueryCol j: it means that you should output the sum of values on column "j". 
 # 
 # The board's dimensions are 256x256 
 # "i" and "j" are integers from 0 to 255 
 # "x" is an integer from 0 to 31 

@array = []

def initialize_matrix 
	for i in 0..255 do
		@array[i] = [] 	
	end
end 

def set_col column, value
	@array.each do |array|
		array[column] = value
	end
end

def set_row row, value
	for i in 0..255 do 
		@array[row][i] = value
	end
end

def query_col column
	result = 0
	@array.each do |array|
		result += array[column] == nil ? 0 : array[column]
	end
	 puts result 
end

def query_row row
	result = 0
	for i in 0..255 do 
		result += @array[row][i] == nil ? 0 : @array[row][i]
	end
	puts result
end

def query_board command_array
	#puts command_array[0]
	case command_array[0]
		when "SetCol"
			set_col command_array[1].to_i, command_array[2].to_i
		when "SetRow"
			set_row command_array[1].to_i, command_array[2].to_i
		when "QueryCol"
			query_col command_array[1].to_i 
		when "QueryRow"
			query_row command_array[1].to_i
	end
end

initialize_matrix
File.open(ARGV[0]).each do |line|
	query_board line.split " "
end