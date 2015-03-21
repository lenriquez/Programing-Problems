# Problem: https://www.codeeval.com/open_challenges/40/
# Description: A number is a self-describing number when 
# (assuming digit positions are labeled 0 to N-1), the digit in each position is 
# equal to the number of times that that digit appears in the number.

def self_describing_numbers array
	for i in 0..array.size-1 do 
		value = array[i].to_i
		for x in 0..array.size-1 do
			if i === array[x].to_i
				value -= 1
			end
		end
		if value != 0 
			return 0
		end
	end
	return 1;
end

File.open(ARGV[0]).each do |line|
	puts self_describing_numbers line.chomp.split("")
end