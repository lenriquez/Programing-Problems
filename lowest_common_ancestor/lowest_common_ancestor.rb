

class Tree
	attr_accessor :right
	attr_accessor :left
	attr_accessor :value

	def initialize value
		self.value = value 
	end
end

tree = Tree.new 30
tree.left = Tree.new 8
tree.right = Tree.new 52
tree.left.left = Tree.new 3
tree.left.right = Tree.new 20
tree.left.right.left = Tree.new 10
tree.left.right.left = Tree.new 29

def LCA root, node_value_1, node_value_2
	return nil  	if root == nil
  	return root 	if root.value == node_value_1 || root.value == node_value_2
  	left = LCA(root.left, node_value_1, node_value_2)
  	right = LCA(root.right, node_value_1, node_value_2)
  	return root if (left && right) 
  	return left ? left : right  # either one of p,q is on one side OR p,q is not in L&R subtrees
end

File.open(ARGV[0]).each_line do |line|
	input = line.split(" ")
	puts (LCA tree, input[0].to_i, input[1].to_i).value
end