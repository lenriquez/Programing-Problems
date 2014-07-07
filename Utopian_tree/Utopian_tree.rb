

def length_after_cicle n
    length = 1
    for i in 1..n
        if i%2==0
            length += 1
        else
            length *= 2
        end
    end
    return length
end 


puts length_after_cicle 4
