# 1.1

char_arr = "Tests".chars 
index = 0 
loop do
	index_neg = (index * -1) + -1 
	char_arr[ index_neg ], char_arr[index] = char_arr[index], char_arr[index_neg] 
	break if(index / 2) < index  # remember
	index += 1
end 
p char_arr
p "-----------------------------------------------------------------------------"

# 1.2
def remove_dup_1
	char_arr = %w( t e s t )
	char_arr.uniq
end

p remove_dup_1
p "-----------------------------------------------------------------------------"

def remove_dup_2
	char_arr = %w( t e s t )
	char_arr = %w( t e s t t e s t )

	size = char_arr.size - 1
	for index1 in 0..size
		for i in index1+1..size
			if char_arr[i] == char_arr[index1] 
				char_arr.delete_at(i)
				i = i - 1
			end
		end
	end 
	return char_arr
end

# Ruby does not allow to manipulate indeces in for 
for a in 0..10
	a = 10
end

p remove_dup_2
p "-----------------------------------------------------------------------------"

def remove_dup3
	char_arr = %w( t e s t t e s t )

	size = char_arr.size 
	for i in 0..size
		for i2 in i+1..size
			char_arr[i2] = nil if char_arr[i] == char_arr[i2] 
		end
	end 
	char_arr.delete_if{ |char| char == nil }
	#char_arr.delete_if{ |char| char  } # This does not work! 
end 
p remove_dup3
p "-----------------------------------------------------------------------------"
p "Is Anagram"

def anagrams?( word_1, word_2 )
	return false  if word_1.size != word_2.size
	word_1 = word_1.chars.sort_by(&:downcase).join  # Remember 
	word_2 = word_2.chars.sort_by(&:downcase).join
	word_1.casecmp(word_2) == 0 
end

p anagrams?("Army", "Mary")
p anagrams?("Army1", "Mary")
p anagrams?("Army1", "Mary!")

p "-----------------------------------------------------------------------------"
p "Replace WhiteSpaces with %20"

#sentence.sub! 'Robert', 'Joe'
#sentence.gsub! 'Robert', 'Joe'
def replace_html_spaces url
	url.gsub(" ", "%20")
end

puts replace_html_spaces("This is a test")
puts replace_html_spaces("This  is a test")
p '-----------------------------------------------------------------------------'

def replace_html_spaces_2 url
	# Your problem is that each time you run the method you are assigning a new value to the constant. 
	html_space_size = 3.freeze 

	# Count how many spaces it has
	amount_spaces = url.count(' ')
	amount_of_extra_space = (amount_spaces * html_space_size) - amount_spaces
	# Create an Array with the amount of spaces
	array = Array.new( url.size + amount_spaces )
	# Create start adding and replacing 
	chars = url.chars
	chars.each do |c|
		if c == ' '
			array << '%20'
		else
			array << c
		end
	end 
	array.join
end

p replace_html_spaces_2('This is a test')
p replace_html_spaces_2('This  is a test')
p '-----------------------------------------------------------------------------'
def replace_html_spaces_3(url)
	# Count the amount of spaces 
	# url.count
end

p '-----------------------------------------------------------------------------'

class List
	attr_accessor :next
	attr_accessor :value
end
# implementors have chosen for nil to be falsy
# def remove_duplicate_unsorted_list(list)
# 	# First index
# 	compare_value = list
# 	do
# 		iterator_1 = compare_value  # Needed to delete the next node if necessary
# 		iterator_2 = iterator_1.next
# 		do  
# 			# Compare first loop iterator with the second loop (Verify Duplicates)
# 			if iterator_1.value == iterator_2.value
# 				# Delete iterator 
# 				 iterator_2.value = nil  
# 			end
# 		end while list.next

# 		compare_value = compare_value.next
# 	end while list.next
# 	while list.next
		
# 	end 
# end


p '-----------------------------------------------------------------------------'

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
=begin
			  1
		   /	  \
		2 			3
	4		5	6		7
=end

test_tree = Tree.new(Tree.new(Tree.new(nil,nil,"A"),Tree.new(Tree.new(nil,nil,"C"),Tree.new(nil,nil,"E"),"D"),"B"),Tree.new(nil,Tree.new(Tree.new(nil,nil,"H"),nil,"I"),"G"),"F")
test_tree_2 = Tree.new(Tree.new(Tree.new(nil,nil,4),Tree.new(nil,nil,5),2),Tree.new(Tree.new(nil,nil,6),Tree.new(nil,nil,7),3),1)


def print_in_preorder(node)
	return if !node 
	print "#{node.value}, "
	print_in_preorder(node.left)
	print_in_preorder(node.right)

end

def print_in_postprder(node)
	return if !node
	print_in_postprder(node.left)
	print_in_postprder(node.right)
	print "#{node.value}, "
end

def print_in_preorder_iterative(node)
	queue = []
	# Add to queue first node
	queue << node
	# check node and add to queue the rest of nodes
	while !queue.empty?
		node = queue.pop
		next if !node
		print "#{node.value},"
		queue << node.right
		queue << node.left
	end
end

def print_in_postorder_iterative(node)
	stack = []
	# Add to stack first node
	stack << node
	while !stack.empty?
		#p stack.map{ |node| node.value}
		node = stack.pop
		if node.visit
			print "#{node.value},"
		else
			node.visit = true
			stack << node
			stack << node.right if node.right
			stack << node.left  if node.left	
		end			
	end

end
puts "preorder"
print_in_preorder(test_tree)
puts "\npostorder"
print_in_postprder(test_tree)
puts "\npreorder"
print_in_preorder_iterative(test_tree)
puts "\npostorder"
print_in_postorder_iterative(test_tree)
