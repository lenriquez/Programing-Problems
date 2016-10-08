#https://www.hackerrank.com/contests/master/challenges/maxsubarray?h_r=internal-search
test_cases=STDIN.gets.to_i

def max_subarray(array)
  tmp = []
  max = 0
  array.each do |number|
    tmp << [number, max + number].max
    max = [max + number, number].max
  end
  tmp.max
end

def max_subarray_nc(array)
  max = array.reject {|x| x < 0}.inject(0){ |sum,x| sum+x} 
  max == 0 ? array.max : max
end

test_cases.times do 
   size = gets
   array = gets.chomp.split(" ").map(&:to_i)
   print max_subarray(array).to_s + " "+ max_subarray_nc(array).to_s
   puts 
end
