#!/bin/ruby
#https://www.hackerrank.com/challenges/encryption?

s = gets.strip
s.gsub!(" ","")
column = Math.sqrt(s.size).ceil
row = Math.sqrt(s.size).floor
row += 1 if (row * column < s.size) 
a = []

for i in 0...row do 
    a << s[i*column...(i+1)*column].split("")
end

for i in 0...column do 
    for j in 0...row do
    	print a[j][i]
    end
    print " "
end


