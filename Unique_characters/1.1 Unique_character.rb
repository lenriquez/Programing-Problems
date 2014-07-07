# 1. How to set to lowercase ?
# 2. What value is the character A in "a".to_i
# 3. What ordinal means? 
# 4. How to get the ordinal of a number?
# 5. How to iterate trough an string, describe 3 ways
	#Iterating with each_char
	# In 1.9.x, the preferred way to iterate over a string is to use the each_char method. This works just as you'd think it would. It takes a block and yields for each character. It knows about Unicode and will yield each character, not each byte.
	# "mêlée".each_char do|c|
  	# puts c
	# end
	# Similarly, if you wish to iterate over the string's numerical values, you can use the each_codepoint method. This might sound a bit cryptic, what is a "codepoint?" Each Unicode character has two parts. It will have a codepage which refers to a set of related characters. For instance, the characters for the Thai language will be together on a codepage. The offset on that codepage is called the codepoint. So, in essence, a unicode character is a reference to a page, and a specific offset on that page. By using each_codepoint you can iterate over the numeric value of the characters in a string without it failing on unicode characters.
	# 
	# 
	# "mêlée".each_codepoint do|i|
	#   puts i
	# end
	# The Most Primitive: each_byte
	# 
	# Maybe you don't care about unicode? Maybe this string contains binary data which might not be valid UTF-8? In this case, what you really want is the each_byte method. This method will iterate over the string ignoring all unicode characters it encounters. This is the most primitive of all the string iteration methods, whatever is in the C string behind the scenes (remember, Ruby is written in C, and the String class is merely a wrapper around a C character array of some kind), it will yield each and every byte as an integer. This is best used if the string contents is not text.
	# 
	# 
	# "mêlée".each_byte do|b|
	#   puts b
	# end
# 6. 


def unique_characters str
	# Create an array to keep track of the characters known 
	array = Array.new(256)

	str.downcase!
	# Check every single character in the string until a find a repeted one 
	str.each_char do |char|
		#Found repeted finish
		if array[char.ord - 96] == nil
			array[char.ord - 96] = true
		else
			return false
		end 
	end
	return true
end

str = "This is a test"
puts unique_characters str
str = "abcdefg"
puts unique_characters str
