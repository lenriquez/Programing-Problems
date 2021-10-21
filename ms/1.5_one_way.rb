def one_way(first, second)
  return false if (first.size - second.size).abs > 1

  # If size are the same it should be a Replace
  check_replace(first, second)
  # end
end

def check_replace(first, second)
  hash = {}
  first.chars.each do |x|
    if hash[x].nil?
      hash[x] = 1
    else
      hash[x] += 1
    end
  end

  missing_chars = 0
  second.chars.each do |x|
    if hash[x].nil?
      missing_chars += 1
    else
      hash[x] -= 1
      missing_chars += 1 if hash[x].negative?
    end
  end
  
  if first.size == second.size
    return missing_chars <= 1
  else
    return missing_chars.zero?
  end
end

p one_way('pale', 'ple')
p one_way('pales', 'pale')
p one_way('pale', 'bale')
p one_way('pale', 'bae')