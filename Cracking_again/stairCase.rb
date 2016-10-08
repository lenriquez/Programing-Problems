def StairCase(n) 

    for i in 1..n
        spaces = " " * (n-i)
        symbols = "#" * i
        puts "#{spaces}#{symbols}" 
    end

end

StairCase(6)
