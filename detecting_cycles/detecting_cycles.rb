def detecting_cycles line
	hash = Hash.new
	input = line.split(" ")
	input.each_with_index do |char, i|
		if hash[char] == nil
			hash[char] = i
		else
			return input[hash[char].to_i..(i-1)]
		end
	end
	return []
end

File.open(ARGV[0]).each_line do |line|
	puts detecting_cycles(line).join(" ")
end


