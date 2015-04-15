# Problem: https://www.codeeval.com/open_challenges/99/
# Description: You have coordinates of 2 points and need to find the distance between them.


File.open(ARGV[0]).each do |line|
  values = line.gsub("(","").gsub(")","").gsub(","," ").split.map{|x| x.to_i }
  result = (values[0] - values[2])**2 + (values[1] - values[3])**2
  puts (result ** 0.5).to_i
end
