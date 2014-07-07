
# tree transversal 
def n_pair_parenthesis array_string, left, right, count
	return if right < left  || left < 0
	
	if left > 0
		array_string[count] = '('
		n_pair_parenthesis array_string, left - 1 , right,count + 1
	end

	if right > left
		array_string[count] = ')'
		n_pair_parenthesis array_string, left, right - 1,count+1
	end 

	puts array_string.join if left == 0 && right == 0
end 

n_pair_parenthesis [], 3, 3,0