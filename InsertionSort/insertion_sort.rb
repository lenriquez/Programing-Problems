def insertion_sort array
	res = 0
	for i in 1..(array.size-1)
		i.downto(1) do |i|
			if array[i].to_i < array[i-1].to_i
				res += 1 
				array[i], array[i-1] = array[i-1], array[i]
			end
		end
	end
	puts res
end


length = gets.to_i
array = gets.gsub("\n","").split(" ")
insertion_sort array