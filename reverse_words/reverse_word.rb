
File.open(ARGV[0]).each_line do |line|
    words = line.split(" ")
    output = ""
    words.reverse_each { |word| output += "#{word} " }
    puts output[0..-1]
end
