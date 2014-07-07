 
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


def find_min node
	return 0 if node == nil
	return [find_min(node.left), find_min(node.right)].min + 1
end

def find_max node
	return 0 if node == nil
	return [find_min(node.left), find_min(node.right)].max + 1
end

 def tree_is_balanced node
 	return (find_max(node) - find_min(node)).abs > 1 
 end

 puts tree_is_balanced tree


