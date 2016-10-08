# https://www.hackerrank.com/challenges/is-fibo
$array = [0,1,1]

def is_fibo(number)
  while($array.last < number)
    $array << $array[-1] + $array[-2]
  end
  return $array.find_index(number) ? "IsFibo": "IsNotFibo"
end

def get_values()
  test_cases = gets.chomp.to_i
  test_cases.times do 
    puts is_fibo(gets.chomp.to_i)
  end
end


get_values()
