# Problem: https://www.codeeval.com/open_challenges/39/
# Description: A happy number is defined by the following process.
# Starting with any positive integer, replace the number by the sum of the squares
# of its digits, and repeat the process until the number equals 1 
# (where it will stay), or it loops endlessly in a cycle which does not include 1.
# Those numbers for which this process ends in 1 are happy numbers, while those 
# that do not end in 1 are unhappy numbers.

def is_happy_number number_array
	result = 0;
	for i in 0..100 do 
		number_array.each do |number|
			result += number.to_i * number.to_i 
		end 

		if result == 1
			return 1
		else
			number_array = result.to_s.split("")
			result = 0
		end
	end
	
	return 0
end

File.open(ARGV[0]).each do |line|
	number_array = line.split("")
	if line.to_i > 0
		puts is_happy_number number_array;
	else
		puts 0;
	end
end