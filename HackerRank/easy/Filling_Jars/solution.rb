#https://www.hackerrank.com/challenges/filling-jars


def solve_problem
  number_jars, testcases = gets.chomp.split(" ").map(&:to_i)
  array = Array.new(number_jars, 0)
  solution = 0
  testcases.times do 
    x, y, candy = gets.chomp.split(" ").map(&:to_i)
    solution += ((y-x)+1) * candy
    #(x..y).each do |jar|
    #  array[jar - 1] += candy 
    #end
  end
  
  #puts array.inject(0,:+) / number_jars
  puts solution / number_jars
end

solve_problem

