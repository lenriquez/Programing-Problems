
def string_repetition string
  rep = string[0]
  index = 1
  string[1..-1].each_char do |char|
	if rep == char
 		if string[0..index - 1] == string[index..(index + index - 1)]
                  
		  return index == 1 ? index : index
		end
	end
	index += 1
  end
  return string.size
end

File.open(ARGV[0]).each do |line|
	puts  string_repetition line.strip
end
