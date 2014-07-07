require 'stringio'

def string_permutations line
	line = line.gsub("\n","").chars.sort.join
	input = line.split("")
	a = [*0..input.length - 1].permutation(input.length).to_a

	s = StringIO.new
	a.each do |array|
		array.each do |number|
			s << line[number]
		end 
		s << ","
	end
	puts s.string[0..-2]
end

File.open(ARGV[0]).each_line do |line|
	string_permutations line
end