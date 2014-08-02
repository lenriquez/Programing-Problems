


'["Seattle:60", "Spokane:21", "Olympia:5"]'


def random_city array
	sum = 0
	array.each  do |city|
		sum += split(":")[1].to_i 
	end

	rand = (Random.new).rand(sum)
	sum = 0
	array.each do |city|
		city = split(":")
		sum += city[1].to_i   
		if rand <= sum 
			return  city[0]
		end
	end
end

