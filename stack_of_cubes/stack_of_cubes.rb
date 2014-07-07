

def stack_of_cubes cubes
	length = Array.new(cubes.length, 0) 
	for i in 0.. cubes.length - 1
		for j in 0.. cubes.length - 1
			if cubes[i][0] >= cubes[j][0] && cubes[i][1] >= cubes[j][1]
				puts  "#{cubes[j][0]} , #{cubes[j][1]}"
				length[i] += 1
			end
		end
		puts
	end
	puts length
end

cubes = Array.new

File.open(ARGV[0]).each_line do |line|
	array = line.gsub("\n","").split(' ')
	cubes << array if array.length >= 2
end

cubes.sort! do |a,b| 
	if a[0] != b[0]
		a[0] <=> b[0]
	else
		a[1] <=> b[1]
	end	
end

stack_of_cubes cubes
