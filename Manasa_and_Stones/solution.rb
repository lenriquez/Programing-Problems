#https://www.hackerrank.com/challenges/manasa-and-stones

# There are many possible solutions for this problem 

# 1. Preorder transversal printing when the number reach the last values
# 2. Create a every single posible solution and just print the last value, is possible to know that will be 2^amount of stones - 1
# 3. Realize that the first value is a * (amount stones - 1)  and last is b * ( amount stones -1 ) and the values in the middle are
# are combinations of that. I'm implementing this one.


def find_number_last_stone(amount_stones, a , b)
  stones_with_value_zero = 1 #  Given that the number on the first stone was zero
  posible_solutions = 2 ** (amount_stones - stones_with_value_zero)

  a, b = [a, b].sort 
  
  array = []
  for i in 0..amount_stones-1 do 
   array <<  a * (amount_stones-1-i) + b * i 
  end 
  array.sort!
  array.uniq!
  puts array.join(" ")
end

def get_inputs
  test_cases = gets.chomp.to_i
  test_cases.times do 
    amount_stones = gets.chomp.to_i
    a = gets.chomp.to_i
    b = gets.chomp.to_i
    find_number_last_stone(amount_stones, a, b)
  end
end


get_inputs()
