



def remove_duplicates str
	tail = 1
	for i in 1..str.length
		for j in 0..str.length-1
			if str[i] == str[j]
				tmp = str[i]
				str[i] = str[j]
				str[j] = tmp
				tail+=1
			end				
		end
	end
	return str
end


str = "This is a test"
puts remove_duplicates str
str = "abcde" 
puts remove_duplicates str