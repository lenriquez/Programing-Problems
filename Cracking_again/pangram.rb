alphabet = %w( a b c d e f g h i j k l m n o p q r s t v u w x y z )
alphabet = Hash[alphabet.map {|v| [v,0]}]
string = gets.strip.gsub(" ","").downcase
    string.each_char do |char|
        alphabet[char] = true
    end

if alphabet.key(0) == nil
    puts "pangram"
else 
    puts "not pangram"
end

