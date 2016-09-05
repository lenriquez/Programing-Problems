class List
	attr_accessor :next
        attr_accessor :value
	def initialize
		@next = nil
		@value = 0
	end
end

def line_to_list array
	list = nil
	list_tmp = nil
	first = true
	array.each do |element|
		tmp = List.new
		tmp.value = element
		if list == nil
			list = tmp
			list_tmp = list
		else
			list.next = tmp
			list = list.next
		end
	end
	return list_tmp
end

def swap_element list, position_1, position_2
	ptr_1 = nil
	ptr_2 = nil
	index = 0
	list_tmp = list
	loop do
		ptr_1 = list if index == position_1
		ptr_2 = list if index == position_2
		break if list.next == nil
		list = list.next
		index += 1
	end 
	return list if ptr_1 == nil || ptr_2 == nil
 	tmp = ptr_1.value
	ptr_1.value = ptr_2.value
	ptr_2.value = tmp

	return list_tmp
end 

def print_list list
	a = []
   	loop do
                 a << list.value
                 break if list.next == nil
                 list = list.next
	end
	puts a.join " " 
end

File.open(ARGV[0]).each do |line|
	line.strip!
        line, replace = line.split ":"
        line.strip!
	replace.strip! 

	list = line_to_list( line.split(" "))
	replace = replace.split ","
	replace.each do |replace_2| 
		pos_1, pos_2 = replace_2.split "-"
		list = swap_element list, pos_1.to_i, pos_2.to_i
	end
	print_list list
end
