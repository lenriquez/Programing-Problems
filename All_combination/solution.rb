
$string_arr = %w(a b c d) 

# Find combination for every single size. {a} has size 1, {a b} size 2 ... 
def all_combination
  for i in 0..$string_arr.size
    search_combination(i)
  end
end 


def search_combination(size, stack = [], depth = 0, index=0 )
  #  Stop condition
  if depth == size
    p stack
    return
  end
  
  for i in index...$string_arr.size
    stack << $string_arr[i]
    search_combination(size,stack, depth + 1, i + 1)
    stack.pop
  end
end

all_combination

