# Problem: https://www.codeeval.com/open_challenges/97/
# Description: Write a program which swaps letters' case in a sentence. All non-letter characters should remain the same.

File.open(ARGV[0]).each do |line|
  string = ""
  line.each_char do |char|
    string += /[[:upper:]]/.match(char) ? char.to_s.downcase : char.to_s.upcase 
  end
  puts string
end
