# Description: Write a program which finds the next-to-last word in a string.
# Problem: https://www.codeeval.com/open_challenges/92/


File.open(ARGV[0]).each do |line|
  puts line.split(" ")[-2]
end

