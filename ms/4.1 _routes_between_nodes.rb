class graph
  attr_accessor :nodes

  def initialize()
  end
end


enum status: {unvisited: "Unvisitied", visiting: "Visiting" , visited: "Visited" }

def route_between_nodes(graph, start, ended)
  return true if start == ended 

  nodes_queue = []

  start.state = status.visiting
  nodes_queue << start
  while !nodes_queue.size.zero? do
    nodes = nodes_queue.shift

    return true if node === ended
    nodes_quede << nodes.nodes
    node.state = status.visited
  end

  return false
end


