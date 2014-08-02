class Node
	attr_accessor :value
	attr_accessor :left
	attr_accessor :right

	def initialize v=nil, l = nil, r = nil
		@value = v
		@left = l
		@right = r
	end
end

def bst_repeted_numbers node, value
 	return 0 if node == nil
	count =  value == node.value ? 1 : 0

	return count + bst_repeted_numbers(node.left, value) + 
		bst_repeted_numbers(node.right, value)
end


node = Node.new(5,Node.new(3,Node.new(1),Node.new(4,Node.new(2),Node.new(7))),Node.new(9,nil,Node.new(11,Node.new(10))))

puts bst_repeted_numbers node, 1