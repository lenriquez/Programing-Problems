
def fibonacci_series position
	return 0 if position < 1
	return 1 if position == 1 || position == 2

	first = 1
	second = 1 
	tmp = second
	for i in 3..position
		tmp = second 
		second = first + second
		first = tmp
	end
	return  second
end

File.open(ARGV[0]).each_line do |line| 
	position = line.to_i
	puts fibonacci_series position
end