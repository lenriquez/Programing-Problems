class Tree
	attr_accessor :left
	attr_accessor :right
	attr_accessor :value
	attr_accessor :visit

	def initialize(left, right, value)
		@left = left
		@right = right
		@value = value
		@visit = false
	end
end

test_tree = Tree.new(Tree.new(Tree.new(nil,nil,"A"),Tree.new(Tree.new(nil,nil,"C"),Tree.new(nil,nil,"E"),"D"),"B"),Tree.new(nil,Tree.new(Tree.new(nil,nil,"H"),nil,"I"),"G"),"F")

def preorder(node)
	return unless node
	print node.value + " "
	preorder(node.left)
	preorder(node.right)
end

def postorder(node)
	return unless node
	postorder(node.left)
	print node.value + " "
	postorder(node.right)
end

def inorder(node)
	return unless node
	inorder(node.left)
	inorder(node.right)
	print node.value + " "
end

puts "preorder recursive"
preorder(test_tree)

puts "\npostorder recursive"
postorder(test_tree)

puts "\ninoder recursive"
inorder(test_tree)

puts ""

