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

def is_binary_search_tree node
	return true if node == nil
	is_bst = false
	return false if !(is_less_than_parent(node.left, node.value) && 
						is_greater_than_parent(node.right, node.value))

	return (is_binary_search_tree(node.left) && is_binary_search_tree(node.right))
end

def is_less_than_parent left, value
	return true if left == nil || left.value <= value
	return false
end

def is_greater_than_parent right, value
	return true if right == nil || right.value >= value
	return false
end

node = Node.new(5,Node.new(3,Node.new(1),Node.new(4,Node.new(2),Node.new(7))),Node.new(9,nil,Node.new(11,Node.new(10))))
#node = Node.new(8,Node.new(9,Node.new(1),Node.new(6,Node.new(4),Node.new(7))),Node.new(10,nil,Node.new(14,Node.new(13))))
puts is_binary_search_tree node