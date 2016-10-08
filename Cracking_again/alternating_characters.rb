inputs = gets.chomp.to_i 

inputs.times do
    string = gets.chomp
    temp_char = nil
    counter = 0
    string.each_char do |char|
        if temp_char == nil 
            temp_char = char
            next
        elsif char == temp_char
            counter += 1
        else
            temp_char = char
        end
        
        
    end
end
