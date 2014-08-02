

def quickselect(arr, k)
  loop do
    pivot = arr[rand(arr.length)]
    left, right = arr.partition { |x| x < pivot }
    if k == left.length
      return pivot
    elsif k < left.length - 1
      arr = left
    elsif k > (arr.size - right.size)
      k = k - arr.length - right.size 
      arr = right
    end
  end
end

def select list, left, right, namespace 
	if left = right 
		return list[left
]	loop do
	
end

v = [7,3,4,1,9]
 quickselect(v,2)
puts v