File.open(ARGV[0]).each_line do |number|
	sum = 0
	number.each_char do |char|
		sum += char.to_i
	end
	puts sum 
end
