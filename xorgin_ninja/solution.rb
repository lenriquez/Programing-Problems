# https://www.hackerrank.com/challenges/xoring-ninja

# this is not ac
def next_permutation number
    

end

# First find permutations from 1 to 2^(size of set)
# Use the permutations get all the possible sets
# Xorg evert set 
def solve_problem(set)
  set = set.reverse.split(" ").map(&:to_i)
  sum = 0
  for i in 1..(2**(set.size))-1
    set_sum = 0
    # Transform i to its array binary representation 
    permutation_set = i.to_s(2).reverse.split("").map(&:to_i)
    # Iterate over every single permutation to get the value
    permutation_set.each_with_index do |binary,index|
      set_sum ^= set[index] if binary == 1 
    end
    sum += set_sum
  end
  return sum
end

def get_input
  test_cases = gets.chomp.to_i
  test_cases.times do 
    size = gets.chomp.to_i
    set = gets.chomp
    puts solve_problem(set)
  end
end

get_input()

