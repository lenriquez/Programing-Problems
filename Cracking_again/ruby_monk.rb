
#Problem Statement
#A restaurant has incoming orders for which you need to compute the costs based on the menu.
#
#You might get multiple orders at times.
#
#Examples:
#if the order is {:rice => 1, :noodles => 1}, and the menu is {:rice => 3, :noodles => 2}, then the cost is 5.
#
#If the orders are {:rice => 1, :noodles => 1} and {:rice => 2, :noodles => 2} and the menu is {:rice => 3, :noodles => 2}, then the cost is 15.
# My solution
class Restaurant
  def initialize(menu)
    @menu = menu
  end

  def cost(*orders)
    tmp = 0
    orders.each do |order|
    order.each do |item, quantity|
      tmp += @menu[item.to_sym] * quantity
    end
    end
    tmp
  end
end

# Monk Solution
class Restaurant
  def initialize(menu)
    @menu = menu
  end

  def cost(*orders)
    orders.inject(0) do |total_cost, order|
      total_cost + order.keys.inject(0) {|cost, key| cost + @menu[key]*order[key] }
    end
  end
end


# Problem Statement
# Given a custom class MyArray, 
# write a 'sum' method that takes a block parameter.

# Example: 
# my_array = MyArray.new([1, 2, 3]) 
# my_array.sum gives 6 
# my_array.sum(10) gives 16 
# my_array.sum(0) {|n| n ** 2 } gives 14

# My solution
class MyArray
  attr_reader :array

  def initialize(array)
    @array = array
  end

  def sum(initial_value = 0)
    @array.map!{|element| yield(element)} if block_given?
    @array.each{|element| initial_value += element}
    initial_value
  end  
end

# Monk Solution Solution
class MyArray
  attr_reader :array

  def initialize(array)
    @array = array
  end

  def sum(initial_value = 0)
    return array.inject(:+) + initial_value unless block_given?
    sum = initial_value
    array.each {|n| sum += yield(n) }
    sum
  end
end

my_array = MyArray.new([1, 2, 3]) 
puts my_array.sum
puts my_array.sum(10)
puts my_array.sum(0) {|n| n ** 2 }