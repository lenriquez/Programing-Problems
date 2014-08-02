


class Node
	attr_accessor :value
	attr_accessor :left
	attr_accessor :right
	attr_accessor :middle
end


def breath_first node
	a = Array.new
	a << node
	while a.length > 0
		expand = a.shift
		a << a.left
		a << a.right
		a << a.middle
	end
end