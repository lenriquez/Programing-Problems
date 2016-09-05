number_of_string = gets.chomp.to_i
solution = ""
number_of_string.times do 
    string = gets.chomp
    count = 0 
    (0..string.size-1).each do |index|
        next if string[index] == string[index + 1 * -1]
        diff = string[(index + 1) * -1].ord - string[index].ord
        count += diff < 0 ? 0 : diff
    end
    solution << "#{count}\n"
end

puts solution
