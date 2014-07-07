class Node 
	attr_accessor :value
	attr_accessor :next
end

class Test

	def init
		node = Node.new
		node2 = node
		
		for i in 0..10000000
			node.value= i 
			node.next = Node.new
			node = node.next
		end

		node.next = nil
		return node2
	end

	def method_1 node
		node2 = node 
		index = 0
		begin
			index+=1
			node = node.next
		end while(node.next!=nil)

		index /=2

		for i in 0..index
			node2 = node2.next
		end 

		puts "Method 1: #{node2.value}"
	end

	def method_2 node
		node2 = node

		begin
			node2 = node2.next
			node = node.next.next
		end while (node!=nil)

		puts "Method 2: #{node2.value}"
	end

	def main
		list = init
		start = Time.now
		method_1 list
		finish = Time.now
		puts (finish - start) * 1000.0
		
		start = Time.now
		method_2 list
		finish = Time.now
		puts (finish - start) * 1000.0
		
	end
end


(Test.new).main