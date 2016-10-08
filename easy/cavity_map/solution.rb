#!/bin/ruby
#https://www.hackerrank.com/challenges/cavity-map/submissions

$map = [ ]
$replace_positions = [ ]
def find_cavity
	for i in 1..($map.size - 2)
		for i2 in 1..($map.size - 2)
			value = $map[i][i2]
			left  = value > $map[i][i2-1]
			right = value > $map[i][i2+1]
			top   = value > $map[i+1][i2]
			down  = value > $map[i-1][i2]
			$replace_positions << [i, i2]  if left && right && top && down 
		end
	end	
end


def get_input
	map_size = gets.chomp.to_i
	map_size.times do 
		$map << gets.chomp.split("").map(&:to_i)	
	end	
end

def replace_values
	$replace_positions.each do |position|
		$map[position.first][position.last] = 'X'
        end
end

def print_map
	$map.each do |row|
		puts row.join("")
	end	
end

get_input
find_cavity
replace_values
print_map
