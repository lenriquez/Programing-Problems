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
	stack = []
	stack << node
	while !stack.empty?
		node = stack.pop
		next unless node
		print node.value + ","
		stack << node.right
		stack << node.left
	end
	puts 
end

def postorder(node)
	stack = []
	stack << node
	while !stack.empty?
		node = stack.pop
		next unless node 

		if node.visit
			print node.value + ","
		else
			node.visit = true
			stack << node
			stack << node.right
			stack << node.left
		end
	end
	puts
end

def inorder(node)
	stack = []
	stack << node
	while !stack.empty?
		node = stack.pop
		next unless node 

		if node.visit
			print node.value + ","
		else
			node.visit = true
			stack << node.right
			stack << node
			stack << node.left
		end
	end
	puts
end

def breadth_first_search(node)
	queue = []
	queue.unshift(node)

	while(!queue.empty?)
		node = queue.shift
		next unless node
		print node.value + ","
		queue.unshift(node.left)
		queue.unshift(node.right)

	end
end

puts "preorder iterative"
preorder(test_tree)

puts "postorder iterative"
postorder(test_tree)

test_tree = Tree.new(Tree.new(Tree.new(nil,nil,"A"),Tree.new(Tree.new(nil,nil,"C"),Tree.new(nil,nil,"E"),"D"),"B"),Tree.new(nil,Tree.new(Tree.new(nil,nil,"H"),nil,"I"),"G"),"F")

puts "inorder iterative"
inorder(test_tree)


