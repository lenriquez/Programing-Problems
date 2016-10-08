# Problem: https://www.codeeval.com/open_challenges/100/
# Description: Write a program which checks input numbers and determines whether a number is even or not.

File.open(ARGV[0]).each do |line| 
  puts (line.chomp.strip.to_i % 2) == 0 ?  1 : 0
end 

