# Problem: https://www.codeeval.com/open_challenges/31/
# Description:
# You are given a string 'S' and a character 't'. 
# Print out the position of the rightmost occurrence of 't' (case matters) in 
# 'S' or -1 if there is none. The position to be printed out is zero based.


def rightMostChar string, char
	index = -1
	string.each_char.with_index(0) do |char_str, i|
		if char_str == char
			index = i
		end
	end
	return index
end

File.open(ARGV[0]).each do |line|
	if line.size > 0
		string, char = line.split(",")
		puts rightMostChar string, char.chomp
	end
end