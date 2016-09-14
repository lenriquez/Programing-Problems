#!/bin/ruby
# url: https://www.hackerrank.com/challenges/taum-and-bday


# Read variables for console and create variables
def read_variables()
  cases = gets.chomp.to_i
  cases.times do 
    # Get number of gifts 
    $black, $white = gets.chomp.split(" ").map(&:to_i)
    # Get number of cost of gifts 
    $c_black, $c_white, $c_converting = gets.chomp.split(" ").map(&:to_i)
    puts calculate_output()
  end
end


def calculate_output()
  # Verify the cost of converting is less than the cost of the gift
   optimize_black = $c_black > $c_converting
   optimize_white = $c_white > $c_converting

  if optimize_black && $c_white + $c_converting < $c_black
    return $black * ($c_white + $c_converting) + $white * $c_white
  end
  if optimize_white && $c_black + $c_converting < $c_white
    return  $white * ($c_black + $c_converting) + $black * $c_black
  end
  return $c_black * $black +  $c_white * $white
end


read_variables()


