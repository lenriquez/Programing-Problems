

number_of_lines = nil
result = Array.new

File.open(ARGV[0]).each_line do |line|
	number_of_lines ||= line.to_i 
	result << line
end

result = result.sort_by(&:length)

for i in 0..(number_of_lines)
	puts result[result.length-i]
end