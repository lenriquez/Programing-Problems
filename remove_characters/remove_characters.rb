def remove_characters string, replace
	replace.split("").each do |char|
		string.gsub! char, ""
	end
	string
end

File.open(ARGV[0]).each_line do |line|
	input = line.split(",")
	puts remove_characters input[0].strip, input[1].strip
end