
# def all_subsets(set)
# 	return [set] if set.size == 1

# 	#split
# 	last = set[-1]
# 	# subset
# 	sets = all_subsets(set[0..-2])

# 	# Add last to result
# 	result = [last]

# 	#Create new set adding last to all the subsets 
# 	sets.each do |z|
# 		result << z + last
# 	end

# 	#Add the sets to the combinations done 
# 	sets + result
# end


def next_set(array)
	i = array.size-1
	while i >= 0 && array[i] == 1
		array[i] = 0
		i -= 1
	end
	if i < array.size
		array[i] = 1
	end
	array
end


def all_subset_iterative(set)
	chars = set.chars
	result = []

	#generate binary number from 1 to set size
	number = Array.new(chars.size){ |i| i=0}
	(2 ** set.size).times do |n|
		string = ""
		number.each_with_index do |i,n|
			string << chars[n] if i == 1
		end
		result << string
		number = next_set(number)
	end 
	result
end

p all_subset_iterative("ab")


def all_subsets(set)
	return [set] if set.size == 1 

	last = set[-1]

	subset = all_subsets(set[0..-2])
	new_sets = []
	subset.each do |set|
		new_sets << set + last
	end

	subset + new_sets
end


p all_subsets("ab")


def next_number(array)
	i = 0
	while i < array.size && array[i] == 1
	 	array[i] = 0
	 	i += 1
	end

	array[i] = 1 if i < array.size
	return array
end

p next_number([0,1])

#()

#()()()

def print_pair(open, close, string)
	print string +", " if open == 0 and close == 0

	print_pair(open-1, close, string + "(") if open > 0 
	print_pair(open, close-1, string + ")") if close > 0 && open < close
end


print_pair(3,3,"")
puts 


def make_change(value, string)
	puts  string if value == 0  

	make_change(value- 25, string + " quarter" )if value - 25 >= 0 
	make_change(value- 10, string + " dime" )if value - 10 >= 0 
	make_change(value- 5, string + " nickel" )if value - 5 >= 0 && !string.include?("pennie")
	make_change(value- 1, string + " pennie" )if value - 1 >= 0 
end

make_change(10,"")