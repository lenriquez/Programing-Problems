



File.open(ARGV[0]).each do |line| 
  list, changes = line.split(":")
  puts list
  puts changes
end
