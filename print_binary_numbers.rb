require "awesome_print"

class Test
	@a 

	def initialize
		@a = Array.new(10,0)
	end

	def next_binary_number

		i = 0
		while i < @a.length and @a[i] == 1
		    @a[i] = 0
		    i = i + 1
		end
			if i < @a.length
				@a[i] = 1
			end
			ap @a
		
		
	end
end

 test = Test.new

test.next_binary_number
test.next_binary_number
test.next_binary_number