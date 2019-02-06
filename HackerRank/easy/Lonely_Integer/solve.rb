#!/bin/ruby

n = gets.strip.to_i
a = gets.strip
a = a.split(' ').map(&:to_s)

tmp = {}
a.each do |number|
  tmp[number] = tmp[number] == nil ? 1 : tmp[number] + 1
end

tmp.select do |key, value|  
  if value == 1
    puts key
  end
end
