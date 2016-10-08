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

def max_height(node)
	return 0 unless node

	return [
			max_height(node.right),
			max_height(node.left)
		].max + 1 
end

def min_height(node)
	return 0 unless node

	return [
			min_height(node.right),
			min_height(node.left)
		].min + 1 
end

test_tree = Tree.new(
	Tree.new(
		Tree.new(nil,nil,"A"),
		Tree.new(
			Tree.new(nil,nil,"C"),
			Tree.new(nil,nil,"E"),
			"D"),
		"B"),
	Tree.new(
		nil,
		Tree.new(
			Tree.new(nil,nil,"H"),
			nil,
			"I"),
		"G"),
	"F")

puts max_height(test_tree)
puts min_height(test_tree)