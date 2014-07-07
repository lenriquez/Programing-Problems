


module State
  UNVISITED = 1
  VISITED   = 2
  VISITING  = 3
end

def breadth_first node_start, node_end
	queue = Array.new 
	queue << node_start
	while queue.lenght > 0
		expand = queue.shift
		if expand != nil
			expand.adjancent.each do |adjancent|
				if adjancent.state != State::VISITED
					if node_end.value == adjancent.value
						return true
					else
						adjancent.state = State::VISITING
						queue << adjancent
					end
			end
			expand.state = State::VISITED 
		end
	end
end