


def merge_sort array
	return array if array.count <= 1

	#Divide 
	mid = array.count / 2
	part_a = merge_sort array.slice(0,mid)
	part_b = merge_sort array.slice(mid,  array.count - mid)

	#Conquer
	new_array = Array.new
	a = 0
	b = 0
	while a < part_a.count && b < part_b.count do
		if part_a[a] <= part_b[b]
			new_array << part_a[a]
			a += 1
		else
			new_array << part_b[b]
			b += 1
		end
	end

	while a < part_a.count do 
		new_array << part_a[a]
		a +=1
	end

	while b < part_b.count do 
		new_array << part_b[b]
		b +=1
	end

	return new_array
end


a=[53,6,3,7,3,8,3,2,75,3]
puts merge_sort a
