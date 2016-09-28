#http://www.geeksforgeeks.org/write-a-c-program-to-print-all-permutations-of-a-given-string/

# Preorder 
$string_arr = %w( a b c )
$used_chars = Array.new($string_arr.size,false)
$depth = 0
def backtracking(string)
  # Stop condition
  if $depth == $string_arr.size
    p string
    return
  end

  $string_arr.each_with_index do |char, index|
    # if the char is already used move to next
    next if $used_chars[index - 1]

    string << char                # Add the char to permutation
    $used_chars[index - 1 ] = true # Make sure we know this char is already used
    $depth += 1 
    backtracking(string)
    string.pop
    $used_chars[index - 1 ] = false
    $depth -= 1
  end
end

backtracking([])
 
