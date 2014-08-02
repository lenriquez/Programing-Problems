
class Member 
    attr_accessor :name
    attr_accessor :friends
    
    def initialize name, friend = []
    	@name = name
    	@friends = friend == nil ? [] : friend
    end
end

test =Member.new(1,[Member.new(2,[Member.new(4)]),Member.new(3, [Member.new(5)])])



def  printSocialGraph  member
	use_a1 = true
	a1 = Array.new 
	a2 = Array.new 
	a1 << member
	while a1.length > 0 || a2.length > 0
		expand = use_a1 ? a1.shift : a2.shift
		print expand.name
		expand.friends.each do |friend|
			if friend != nil
				if !use_a1
					a1 << friend 
				else
					a2 << friend 
				end
			end
		end

		if a1.length == 0 && use_a1
			puts
			use_a1 = false
		elsif a2.length == 0 && !use_a1
			puts
			use_a1 = true
		end
	end 
end

printSocialGraph test