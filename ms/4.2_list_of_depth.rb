class PositiveIntegerNode
  attr_accessor :left
  attr_accessor :right
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

def create_from_array(array, start, ends )
  # Preconditions validations
  return nil if start >= ends
  return nil if array.empty?

  # Gather index
  count = start + ((ends - start)/2)
  count = count.floor

  # Create Node
  node = PositiveIntegerNode.new(array[count])
  node.left = create_from_array(array, start, count)
  node.right = create_from_array(array, count + 1, ends)

  node
end

# ==============================================================================

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

# ==============================================================================

def main
  node = nil
  arr = [1, 2, 3, 4, 5]

  # Create Tree
  arr.each do |n|
    node = create_from_array(arr, 0, arr.size)
  end

  list = list_of_depth(node)
  list.each do |x|
    x.each do |y|
      print y.value
    end
    p "/"
  end
end

main

