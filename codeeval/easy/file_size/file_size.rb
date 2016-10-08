#!/usr/bin/env ruby

# Problem: https://www.codeeval.com/open_challenges/26/
# Decription: Print the size of a file in bytes.
file = ARGV[0]
size = File.size?(file)
puts size == nil ? 0 : size; 
