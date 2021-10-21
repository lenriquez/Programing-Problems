def check_permutation(string1, string2)
  string2.strip!
  string1.strip!
  return false if string1.size != string2.size

  string1.chars.sort == string2.chars.sort
end

def check_permutation_hash(string1, string2)
  string2.strip!
  string1.strip!
  return false if string1.size != string2.size

  hash = {}
  string1.chars.each do |x|
    if hash[x].nil?
      hash[x] = 1
    else
      hash[x] += 1
    end
  end

  string2.chars.each do |x|
    if hash[x].nil?
      return false
    else
      hash[x] -= 1
      return false if hash[x] == -1
    end
  end

  true
end

p check_permutation('test  ', 'tets')
p check_permutation('test  ', 'tets2')
p check_permutation('test  ', 'tet2')

p check_permutation_hash('test  ', 'ttes')
p check_permutation_hash('test  ', 'tets2')
p check_permutation_hash('test  ', 'tet2')
