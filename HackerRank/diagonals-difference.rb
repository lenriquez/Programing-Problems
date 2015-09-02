#https://www.hackerrank.com/challenges/diagonal-difference

expected_input_lines = gets.chomp.to_i

result = 0 
array = []

expected_input_lines.times{ array << gets.chomp.split(" ").map(&:to_i)}
(0..(expected_input_lines-1)).each{|index| result+= array[index][index] }
puts result
result = 0
(0..(expected_input_lines-1)).each{|index| result-= array[index][expected_input_lines-(index+1)]}

puts result.abs
