
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

def tree_serializing node
	string = " "
	return "_" if node == nil
	queue = Array.new
	queue << node

	while queue.size > 0 do
		while queue.size > 0 do
			node_expand = queue.shift

			if node_expand == nil || node_expand.value == nil
				string +=  "% " 
				next
			end
			string +=  "#{node_expand.value} "
			queue << node_expand.left
			queue << node_expand.right
		end
	end 
	return string
end

def tree_de_serializing string
	array = string.split(" ")
	queue = Array.new
	node = Node.new
	queue << node

	while array.size > 0  do 
		node_expand = queue.shift
		value = array.shift
		next if  value == "%"

		node_expand.value = value.to_i
		node_expand.left  =  Node.new
		node_expand.right =  Node.new
		queue << node_expand.left
		queue << node_expand.right
	end
	return node
end

	# 1#2,3)
 	node = Node.new(1,Node.new(2),Node.new(3))
 	#tree_de_serializing(tree_serializing(node))
 	puts tree_serializing(tree_de_serializing(tree_serializing(node)))
 	# 1
 	#2,3
 	#_,4)
 	node = Node.new(1,Node.new(2,Node.new(4)),Node.new(3))
 	puts tree_serializing(tree_de_serializing(tree_serializing(node)))
 	#puts tree_serializing node
 	# 1
 	#2,3
 	#_,_)_,4)
 	node = Node.new(1,Node.new(2),Node.new(3,Node.new(4)))
 	puts tree_serializing(tree_de_serializing(tree_serializing(node)))
 	#puts tree_serializing node