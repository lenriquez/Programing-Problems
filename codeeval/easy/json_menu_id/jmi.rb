# Problem: https://www.codeeval.com/open_challenges/102/
# Description: You have JSON string which describes a menu. Calculate the SUM of IDs of all "items" in the case a "label" exists for an item.


def count_id json
  return 0 if ( json == "" || json == nil ) 
  start = json.index "[" 
  ends = json.index "]"
  return  if ( start == nil || ends == nil )
   
  json = json[start + 1, ends - 1]
  
  array_items = json.split("},")
     
  result = 0
  array_items.each do |item|
   next if !(item.include? "label")
   item.gsub! "null,", " " 
   result += item.split(",")[0].split(":")[1].to_i
  end
  return  result
end


File.open(ARGV[0]).each do  |line|
 line.chomp!
 next if line == ""
 puts count_id  line
end
