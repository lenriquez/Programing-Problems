

def string_search array
  return false if array == nil || array[1] == nil
  index = 0
  array[0].each_char do |char|
  
  	if array[1][index] == char
  		index += 1
  	elsif array[1][index] != char && array[1][index] != '*'
  		index = 0
  	elsif array[1][index] == '*' && array[1][index + 1] == char
  		index += 2
  	end
  	return true if index >= array[1].length 
  end

  return false
end


File.open(ARGV[0]).each_line do | line |
	puts string_search line.gsub("\n","").split(",")
end 
