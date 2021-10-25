
class Dependency
  attr_accessor :nodes
  attr_accessor :count

  def initialize
    nodes = []
  end

  def increase
    count += 1
  end
end

class Graph
  attr_accessor :hash

  def initialize(deps)
    deps.each do |y|
      hash[y.first] ||= Dependency.new
      hash[y.first] << y[1]
      hash[y.second].increase
    end
  end
end

