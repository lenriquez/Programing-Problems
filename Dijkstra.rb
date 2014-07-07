
class Node
	attr_accessor :distance	
	attr_accessor :previus
	attr_accessor :neighbors
	attr_accessor :length

	def initialize
		@distance = 9999
		@previus = nil
	end
end


def dijkstra node
	priority_queue =  Array.new
	priority_queue << node

	while priority_queue.length > 0
		expand = priority_queue.shift
		expand.neighbors.each_index do |i|
			if expand.distance + expand.neighbors[i].length[i]  < expand.neighbors[i].distance
				expand.neighbors.distance = expand.distance + expand.neighbors.length[i] 
				priority_queue << expand.neighbors[i]
				priority_queue
			end
		end
	end
end