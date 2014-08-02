
Two numbers sum
Given an array of numbers and a target number, write a function to check if two numbers in the list sum equal to the target number.

You should ask / they may ask - solve before looking at this. (select to view)
What if the list is sorted?__________________________________
Can you do it without using additional memory?________________

def two_number_sum array, n 
	array.sort!
	reverse_index = array.size - 1 
	index = 0
	while index >= reverse_index
		if array[index] + array[reverse_index] > n
			reverse_index -= 1
		elsif array[index] + array[reveres_index] < n
			index += 1
		else
			puts "#{array[index]} + #{array[reverse_index]}"
			index += 1
		end
	end
end


# 12345678  10
# 2456