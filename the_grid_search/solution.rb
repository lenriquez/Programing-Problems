#!/bin/ruby
# https://www.hackerrank.com/challenges/the-grid-search

def search
  x, y, seek_index  = 0, 0, 
  $grid.each do |line|
     seek_index = line.index? $seek_grid[0]
     unless seek_index
      seek_index = 0
      next
     end

     
      
  end
end

def load_input()
  test_cases = get.chomp.to_i
  test_cases.times do 
    $grid = []
    rows = gets.chomp.split(" ").first.to_i
    rows.times do 
      $grid << gets.chomp
    end
    rows = gets.chomp.split(" ").first.to_i
    rows.times do 
      $seek_grid << get.chomp
    end
  end
end

def main
  load_input()
  search
end

main()
