require 'prime'

array_prime = Prime.take(1000)

array_prime.reverse_each do |x|
	if x.to_s.reverse == x.to_s
		puts x
		exit
	end
end