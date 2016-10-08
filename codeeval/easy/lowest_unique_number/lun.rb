# Problem: https://www.codeeval.com/open_challenges/103/
# Description: There is a game where each player picks a number from 1 to 9, writes it on a paper and gives to a guide. A player wins if his number is the lowest unique. We may have 10-20 players in our game.

# Examples: 
# 3 3 9 1 6 5 8 1 5 3
# Solution: 5
# 9 2 9 9 1 8 8 8 2 1 1
# Solution: 0

File.open(ARGV[0]).each do |line| 
   hash = Hash.new
   line.chomp.strip.split(" ").each do |number|
       hash[number] = hash[number] == nil ? 1 : hash[number] + 1
   end
   min = 10
   hash.each_key do |key|
	if hash[key] == 1 and key.to_i <  min
          min = key.to_i
        end  
   end
   if min == 10
     puts 0
   else
     puts line.gsub(" ", "").index("#{min}") + 1
   end 
end 
