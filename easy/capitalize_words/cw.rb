# Problem: https://www.codeeval.com/open_challenges/93/
# Description: Write a program which capitalizes the first letter of each word in a sentence.


File.open(ARGV[0]).each do |line|
  puts line.split(" ").map { |word| word[0].capitalize + word[1..-1] }.join(" ").strip
end

