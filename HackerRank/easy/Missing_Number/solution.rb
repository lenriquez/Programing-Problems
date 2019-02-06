# https://www.hackerrank.com/challenges/missing-numbers

gets
number = gets.chomp.split(" ")
hash = {}
number.each do |x|
  hash[x] = hash[x] ? hash[x] + 1 : 1 
end

gets
number = gets.chomp.split(" ")
number.each do |x|
  hash[x] -= 1 
end

hash.select!{|k,v| v != 0 }
puts hash.keys.sort.join(" ")

