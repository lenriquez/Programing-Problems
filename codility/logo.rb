=begin

A non-empty zero-index array A consisting of N positive integers is given.

A LOGO turtle stands at (0,0) heading Notrht. It moves A[0] steps forward and turns by 90 degrees clockwise. Then it moves A[1] forward and turns clockwise by 90 degrees. And so on.

=end

def solution(a)
  north = 0, east = 0, south = 0, west = 0
  a.each_with_index do |movement, index|
    if index % 4 == 0 
      north = index == 0 ? movement : south + movement
    elsif index % 4 == 1
      east = index == 0 ? movement : west + movement
    elsif index % 4 == 2
      south = 
    elsif index % 4 == 3
      
    end   
    
    
  end
 
end
