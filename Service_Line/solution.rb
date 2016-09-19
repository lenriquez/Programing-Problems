# https://www.hackerrank.com/challenges/service-lane

def solve_problem()
  lenght, test_cases = gets.chomp.split(" ").map(&:to_i)
  array = gets.chomp.split(" ").map(&:to_i)
  test_cases.times do 
    i, j = gets.chomp.split(" ").map(&:to_i)
    puts array[i..j].min
  end
end

solve_problem()

