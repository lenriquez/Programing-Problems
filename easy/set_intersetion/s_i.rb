# Problem: https://www.codeeval.com/open_challenges/30/
# Description: Move to the end of the line 

def set_intersection set1, set2 
	result 			= [];
	sec_index   = 0 
	first_index = 0

	while sec_index < set2.size &&  first_index < set1.size do 
		if set1[first_index].to_i > set2[sec_index].to_i
			sec_index += 1
		elsif set1[first_index].to_i == set2[sec_index].to_i
			result << set1[first_index]
			first_index += 1
		elsif set1[first_index].to_i < set2[sec_index].to_i
			first_index += 1
		end
	end
	return result
end

def preprocess string
	set1, set2 = string.split(";")
	set1 = set1.split(",")
	set2 = set2.split(",")
	set_intersection set1, set2
end

File.open(ARGV[0]).each_line do | line |
	puts (preprocess line.gsub("\n", '')).join(",")
end 