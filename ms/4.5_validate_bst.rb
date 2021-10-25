class RepeatedValueException < StandardError
end

class InvalidArgumentException < StandardError
end

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

def create_from_array(array, start, ends)
  # Preconditions validations
  return nil if start >= ends
  return nil if array.empty?

  # Gather index
  count = start + ((ends - start) / 2)
  count = count.floor

  # Create Node
  node = PositiveIntegerNode.new(array[count])
  node.left = create_from_array(array, start, count)
  node.right = create_from_array(array, count + 1, ends)

  node
end

# ==============================================================================

def validate_bst(node)
  return true if n == node

  return false if !min && n.data <= min || !max && n.data > max

  validate_bst(node.left, min, n.data) && validate_bst(node.right, n.data, max)
end

# ==============================================================================

def main
  node = nil
  arr = [1, 2, 3, 4, 5, 6]

  # Create Tree
  arr.each do |n|
    node = create_from_array(arr, 0, arr.size)
  end
  p node

  p validate_bst(node)
end

main