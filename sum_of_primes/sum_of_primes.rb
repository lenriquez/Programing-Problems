require 'prime'

array_prime = Prime.take(1000)

result = 0
array_prime.each do |x|
	result += x
end

puts result