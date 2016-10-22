#!/usr/bin/ruby	

def number_chocolates(money, price, wrappers_to_change)
  chocolates = money / price 
  wrappers = money / price

  begin
    chocolates += wrappers / wrappers_to_change
    wrappers =  (wrappers % wrappers_to_change) + (wrappers / wrappers_to_change )
  end  while(wrappers > wrappers_to_change) 
  puts chocolates
end

def main()
  test_cases = gets.chomp.to_i
  test_cases.times do 
    test_case = gets.chomp.split(" ").map(&:to_i)
    number_chocolates(test_case[0],test_case[1],test_case[2])
  end
end

main()
