

gets().to_i.times do
  hash = Hash[gets().split("").map{|char| [char,TRUE]}]
  result = "NO"
  gets().chomp().split("").each do |char|
    if hash[char]
      result = "YES"
      break
    end
  end
  puts result
end
