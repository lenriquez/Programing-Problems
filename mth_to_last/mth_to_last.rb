# Return the mth number from start 
def mth_to_last line
	input = line.split(" ")
	index = (input.length-1) - input[ input.length-1 ].to_i
	puts input[index] if  index >= 0
end

File.open(ARGV[0]).each_line do |line|
	mth_to_last line
end