


def represent_cents string,solution, number, coins
	if solution == number 
		puts string
		return 1 
	end
	return 0  if solution > number

	representation = 0
	index = 0
	coins.each do |coin|
		representation += represent_cents string +"+#{coin}",solution + coin, number, coins[index..-1]
		index += 1
	end
	return representation
end

puts represent_cents "",0, 10, [25,10,5,1] 