path = Array.new

def get_paths x, y, string
	if x == 0 && y == 0
		return 1 
	end
	if matrix[x][y] == State::BLOCK
		return 0
	else
		path
	end

	get_paths(x - 1, y) == 1
	return get_paths(x - 1, y) + get_paths(x, y - 1)
end