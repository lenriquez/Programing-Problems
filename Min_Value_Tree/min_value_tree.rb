
class Node
    attr_accessor :val
	attr_accessor :right
	attr_accessor :left
end



def min_tree node, min
	return min if node == nil
	min = min > node.val ? node.val : min
	min = min_tree(node.left, min)
	min = min_tree(node.right, min)
		
	return min
end

def min_tree_2 node
	return 99999999 if node == nil

	min_left = min_tree_2 node.left
	min_right =min_tree_2 node.right

	return [min_right,min_left, node.val].min  
end

node = Node.new
node.val = 3
node.right = Node.new
node.right.val = 2
node.left = Node.new
node.left.val = 1

puts min_tree_2(node)
