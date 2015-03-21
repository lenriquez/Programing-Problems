
# Problem: 			https://www.codeeval.com/open_challenges/29/
# Description:  Print unique elements

def find_unique string
	hash = Hash.new()
	string.split(",").each do |value|
		hash[value] = true
	end
	hash.keys.join(",")
end

File.open(ARGV[0]).each_line do |line|
	puts find_unique line.gsub("\n",'')
end
