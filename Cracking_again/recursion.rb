
# 1 1 2 3 5 8

@cache = [0,1,1]
def get_fibonacci(number)
	return @cache[number] if @cache[number]

	result = get_fibonacci(number - 1) + get_fibonacci(number -2)
	@cache[number] = result
	return result
end

puts "Gets Fibonacci:"
(1..7).each do |index|
	print "#{get_fibonacci(index)},"
end 
puts

@matrix = [
	[true,true,true],
	[true,false,true],
	[true,true,true]
]

def number_of_paths(size, position_x = 0, position_y = 0)
	return 1 if position_x >= size || position_y >= size
	return 0 unless @matrix[position_x][position_y]
	return number_of_paths(size,position_x + 1, position_y) + 
		number_of_paths(size,position_x + 1, position_y) 
end

puts number_of_paths(@matrix.size)


def all_subsets(set)
	return [set] if set.size == 1
	last = set[-1]
	set = all_subsets(set[0..-2])
	add = [last]
	set.each do |c|
		add << c + last
	end
	set + add
end

p all_subsets("abcd").sort_by(&:length)


def all_permutations(set)
	# Stop Restriction
	return [set, set.reverse] if set.size == 2 
	# Case set size == 1 
	return set if set.size < 2
	
	# Add last char to each solution
	result = []
	last = set[-1]
	all_permutations(set[0..-2]).each do |subset|
		for i in 0..subset.size 	
			result << subset.clone
			result.last.insert(i, last) 
		end 
	end
	return result
end 

p all_permutations("abc")
