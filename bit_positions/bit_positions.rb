
File.open(ARGV[0]).each_line do |line|
	numbers = line.split(",")

	first_position = numbers[1].to_i - 1
	second_position = numbers[2].to_i - 1
	number =  numbers[0].to_i
	
	puts number[first_position] == number[second_position]
end