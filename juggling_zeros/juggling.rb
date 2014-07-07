
def juggling_zeros line
	array_input = line.split " "
	replace = ""
	number = ""
	for i in 0..array_input.length-1
		if i % 2 == 0
			replace = array_input[i].length == 2 ? "1" : "0"
		else
			number += array_input[i].gsub "0", replace
		end
	end
	puts number.to_i(2) 
end

File.open(ARGV[0]).each_line do |line|
	juggling_zeros line
end
