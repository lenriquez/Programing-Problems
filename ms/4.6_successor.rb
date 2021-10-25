class RepeatedValueException < StandardError
end

class InvalidArgumentException < StandardError
end

class PositiveIntegerNode
  attr_accessor :left
  attr_accessor :right
  attr_accessor :parent
  attr_accessor :value

  def initialize(node)
    @value = node
  end

  def add_node(value)
    raise InvalidArgumentException if value.is_a? Integer

    if value > @value
      @right = PositiveIntegerNode.new(value)
    elsif value < @value
      @left = PositiveIntegerNode.new(value)
    else
      raise RepeatedValueException.new("The value #{value} is already on the tree")
    end
  end
end

@nodeSuccessor= nil

def create_from_array(array, start, ends)
  # Preconditions validations
  return nil if start >= ends
  return nil if array.empty?

  # Gather index
  count = start + ((ends - start) / 2)
  count = count.floor


  # Create Node
  node = PositiveIntegerNode.new(array[count])
  if (array[count] == 3)
    @nodeSuccessor = node
  end

  node.left  = create_from_array(array, start, count)
  node.right = create_from_array(array, count + 1, ends)

  node.left.parent = node if !node.left.nil?
  node.right.parent = node if !node.right.nil?
  node
end

# =======================================================================================================================
class NodeSuccessorError < StandardError
end

# Return value node or nil
#
def successor(node, up = false)
  return nil if node.nil?
  # return nil if node.parent.nil?

  if !node.right.nil? && !up
    return leftMost(node.right)
  elsif node.parent.left == node
    return node.parent
  elsif node.parent.right == node
    successor(node.parent, true)
  else
    raise NodeSuccessorError('Missing case for node successor', node)
  end
end

def leftMost(node)
  return nil if node == nil
  return leftMost(node.left) || node
end
# ======================================================================================================================

def list_of_depth(tree)
  list = [[tree]]
  level = 1

  traverse(list, level)
  list
end

def traverse(list, level)
  return if list[level - 1].nil?
  list[level - 1].each do |x|
    if !list[level]
      list[level] = []
    end
    list[level] << x.left if x.left
    list[level] << x.right if x.right
  end
  traverse(list, (level + 1))
end

def main
  node = nil
  arr = [3, 5, 7, 10, 15, 17, 20, 25, 30, 35]

  # Create Tree
  arr.each do |n|
    node = create_from_array(arr, 0, arr.size)
  end
  p node

  list = list_of_depth(node)
  list.each do |x|
    x.each do |y|
      print "#{y.value} ,"
    end
    p "/"
  end
  p '====='
  p @nodeSuccessor

  p successor(@nodeSuccessor)&.value
end

main
