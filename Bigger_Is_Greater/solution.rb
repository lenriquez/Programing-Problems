#!/usr/bin/ruby
#https://www.hackerrank.com/challenges/bigger-is-greater
   
# Find the first letter with an small right neighbor compare to itself
# return its index
# Find longest non-increasing suffix and Identify pivot
def find_small_neighbors array
  tmp_char = array[0]
  array.each_with_index do |char, index|
    next if index === 0
    return index if tmp_char > char 
    tmp_char = char
  end
  return false;
end

# Search left to right, swapping the bigger number find the biggest number
# and sort the left size  
def apply_solution array

  # Reverse the String to iterate right to left JUST because is easier :P
  index = find_small_neighbors array.reverse!
  
  return "no answer" unless index

  # Find rightmost successor to pivot in the suffix
  sec_index = array.index(array.slice(0..index).select{ |num| num > array[index] }.sort.first)
  # Swap with pivot
  array[index], array[sec_index] = array[sec_index], array[index]

  # Reverse the suffix REVERT rathern than sort
  solution = array.slice!(0..index-1).sort.join.reverse
  solution << array.join
  return solution.reverse
end

# Get Data 
def main  
  test_cases = gets.chomp
  test_cases = test_cases.to_i if test_cases
  test_cases.times do
    problem = gets.chomp.split("")
    puts apply_solution problem if problem 
  end
end

main
