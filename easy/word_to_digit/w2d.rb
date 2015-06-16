
@hash_digits = {
  "zero" => "0",
  "one" => "1", 
  "two" => "2",
  "three" => "3",
  "four" => "4",
  "five" => "5",
  "six" => "6",
  "seven" => "7",
  "eight" => "8",
  "nine" => "9"
 } 

def w2d words_array
  result = ""
  words_array.each do |word|
    result << @hash_digits[word]
  end 
  result
end


File.open(ARGV[0]).each do |line|
  line.chomp!
  puts w2d line.split(";")  
end
