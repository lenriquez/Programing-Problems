begin
  cases = gets.chomp.strip.to_i
rescue
  print ""
  exit 0
end

output = ""
cases.times do
  begin
    string=gets.strip
    print "" if string == nil
    array=string.chomp.split(/(\d+)/).select{ |x| !x=="0" || x.to_i != 0}
  rescue
    print "Error"
    exit 0
  end
  counter = 0
  counter += 1 if array[0] == array[1]
  counter += 1 if array[0] == array[2]
  counter += 1 if array[1] == array[2]

  output << case counter
  when 0
    "Scalene\n"
  when 1
    "Isosceles\n"
  when 3
    "Equilateral\n"
  end
end

print output.strip
