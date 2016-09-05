tmp = []
sum = 0
[−2, 1, −3, 4, −1, 2, 1, −5, 4].each do |x|
   if sum + x > 0
       sum = sum + x
       tmp << sum
   else
       sum = 0
       tmp << sum
   end
end
