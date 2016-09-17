#!/usr/bin/ruby
# https://www.hackerrank.com/challenges/icecream-parlor


def find_solution(money, icecream_list)
  hash = Hash[icecream_list.map.with_index.to_a]
  #hash = Hash[icecream_list.zip(Array.new(icecream_list.size, 0))]
  i = 1
  icecream_list.each do |number|
    difference = money - number
    if difference == number 
      if icecream_list.count(number) > 1
        return "#{i} #{icecream_list.size - icecream_list.reverse.find_index(number)}"
      end 
      i += 1
      next
    end

    if hash[difference]
     return "#{i} #{ hash[difference] + 1 }"
    end
    i +=1
  end 

end


def get_values
  test_case = gets.chomp.to_i
  test_case.times do
    money = gets.chomp.to_i
    size = gets
    icecream_list = gets.chomp.split(" ").map(&:to_i)
    puts find_solution(money, icecream_list)
  end 
end


get_values()

