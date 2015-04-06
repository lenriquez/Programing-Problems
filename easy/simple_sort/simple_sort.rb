
def simple_sort array
  array = array.map{ |n| eval n}
  return quick_sort( array )
end

def quick_sort list
	return list if list.size <= 1
	pivot = list.shuffle.shift
  left, right = list.partition { |el| el < pivot }
  quick_sort(left).concat(quick_sort(right))
end

def print list
	s = ""
	list.each do |number|
		s << " %.3f" % number
	end
	s.strip!
	puts s
end

File.open(ARGV[0]).each do |line|
	print simple_sort line.split(" ")
end