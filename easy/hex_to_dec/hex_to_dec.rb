# Problem: https://www.codeeval.com/browse/67/
# Description: You will be given a hexadecimal (base 16) number. Convert it into decimal (base 10).

def h2d array
	result = 0
	index = 0
	array.reverse.each do |char|
		value = symbol_to_number char		
		result += ( 16 ** index ) * value
		index += 1
	end
	result 
end

def symbol_to_number symbol
	case symbol.downcase
	when "a"
		return 10
	when "b"
		return 11
	when "c"
		return 12
	when "d"
		return 13
	when "e"
		return 14
	when "f"
		return 15
	end
	return symbol.to_i
end


File.open(ARGV[0]).each do |line|
	puts h2d line.chomp.split("")
end