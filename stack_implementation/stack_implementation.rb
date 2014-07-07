
class Stack
	attr_accessor :stack

	def initialize
		@stack = Array.new
	end

	def pop
		stack.pop
	end

	def push number
		stack.push number
	end

	def length
		return stack.length
	end

	def print
		puts stack
	end
end


File.open(ARGV[0]).each_line do |line|
	stack = Stack.new
	numbers = line.split " "
	numbers.each do |number|
		stack.push number
	end
	#stack.print
	for  i in 0..stack.length-1
		if i % 2 == 0
			print stack.pop + " "
		else
			stack.pop
		end
	end
	puts 
end
