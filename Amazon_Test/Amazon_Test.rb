

class SetOfStacks

 	#threshold of capacity (Setting capacity to 10)
 	@capacity
	@stack_set
 	@index_stack
 	@index_stack_number

	def initialize
 		@capacity = 10
 		@stack_set = Array.new
 		@stack_set[0] = Array.new
 		@index_stack_number = 0
 		@index_stack = 0
	end
	
	# Should create a new stack once the previous one 
	def push value 
		if @index_stack >= @capacity
			@index_stack = 0
			@index_stack_number += 1
			@stack_set[@index_stack_number] = Array.new
		end 

		@stack_set[@index_stack_number][@index_stack] = value
		@index_stack += 1
	end

	def pop
		if @index_stack <= 0
			@index_stack = @capacity-1
			@index_stack_number -= 1
		end

		if @index_stack_number < 0
			@index_stack_number = 0
			return "Empty"
		end

		@index_stack -= 1
		return @stack_set[@index_stack_number].pop
	end
end

stacks = SetOfStacks.new

for i in 0..10
	stacks.push i
end

for i in 0..10
	puts stacks.pop
end