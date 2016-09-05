# tmp = []
# sum = 0
# #[200, -1, -3, -4, -1, -2, -1, -30, -100]
# [].each do |x|
#    if sum + x > 0
#        sum = sum + x
#        tmp << sum
#    else
#       tmp << sum + x
#        sum = 0
#    end
# end

# p tmp
# puts tmp.max


cases = STDIN.gets
cases=cases.strip.to_i

cases.times do 
    elements = STDIN.gets.strip.to_i
    array = STDIN.gets.strip.split(" ")
    tmp = []
    sum = 0
    array.map!(&:to_i)
    array.each do |x|
       if sum + x > 0
           sum = sum + x
           tmp << sum
       else
           tmp << sum + x
           sum = 0
           
       end
    end
    max = tmp.max ? tmp.max : 0 
    print "#{max} "
    print array.inject(0){|sum,x| x >0? sum + x : sum }
    puts
end
