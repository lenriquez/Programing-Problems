=begin 
FIRST NON-REPEATED CHARACTER
CHALLENGE DESCRIPTION:

Write a program to find the first non repeated character in a string.

INPUT SAMPLE:

The first argument will be a path to a filename containing strings. E.g.

	yellow
	tooth

OUTPUT SAMPLE:

Print to stdout, the first non repeating character, one per line. E.g.

	y
	h
=end

def FNRC line
	chars = line.split("")
	hash = {}
	chars.each do |char|
		hash[char] = hash[char] == nil ? 0 : hash[char] + 1 
	end
	hash.each do |key, value|
		if value == 0
			return key
		end
	end
end

File.open(ARGV[0]).each_line do |line|
	puts FNRC line
end