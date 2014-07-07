

def fizz_buzz n, array
	letter = ["F","B"]
	result = ""
	for i in 1..n.to_i
		partial_result = ""
		for x in 0..array.length-1
			partial_result += i % array[x].to_i == 0 ? letter[x] : ""
		end 
		result += partial_result == "" ? "#{i} " : "#{partial_result} " 
	end
	return result[0..-2]
end

File.foreach(ARGV[0], "\n") do |line|
    param = line.split(" ")
    puts fizz_buzz param.pop, param
end