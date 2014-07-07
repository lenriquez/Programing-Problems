
File.open(ARGV[0]).each_line do |line|
	numbers = line.split(",")
	i =  0
	i += 1 while(numbers[0].to_i >= (numbers[1].to_i * i))
	i = i ==  0 ? 1 : i 
	puts numbers[1].to_i * i
end
