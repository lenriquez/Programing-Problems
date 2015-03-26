
# Problem: https://www.codeeval.com/open_challenges/82/ 

# Description: An Armstrong number is an n-digit number that is equal to the sum
# of the n'th powers of its digits. Determine if the input numbers are Armstrong
# numbers.
 
def armstrong_number number_array, number
 result = 0
 number_array.reverse_each do |number|
 	result += number.to_i ** number_array.size
 end
 return number == result
end


File.open(ARGV[0]).each do |line|  
	line.chomp!
	result = armstrong_number line.split(""), line.to_i
	puts result.to_s.capitalize
end 