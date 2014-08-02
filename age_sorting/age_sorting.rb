require "awesome_print"

class Person
	attr_accessor :name
	attr_accessor :age

	def initialize  name, age
		@name = name
		@age = age
	end
end


a = Array.new

a << Person.new( "Victor", 10)
a << Person.new( "Hugo ",  10)
a << Person.new( "Pablo",  12)
a << Person.new( "Perez",  13)


a.sort! do |b,c|
	if b.age == c.age
		b.name.downcase <=> c.name.downcase
	else
		b.age <=> c.age
	end
end

ap a