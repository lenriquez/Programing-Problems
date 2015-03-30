# Problem: https://www.codeeval.com/open_challenges/62/
# Description: Given two integers N and M, calculate N Mod M (without using any inbuilt modulus operator).

def n_mod_m x, y
	if x < y 
		return x
	end
	until x < y do
		x = x - y 
	end
	x
end


File.open(ARGV[0]).each do |line|
	x,y = line.split(",")
	puts n_mod_m x.to_i, y.to_i
end