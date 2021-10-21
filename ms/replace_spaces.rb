def replace_spaces(string)
  string.gsub!(' ', '%20')
end

def replace_spaces_with_string(string)
  size = string.count('') * 3 + string.chars.size

  result = Array.new(size)
  string.chars.each do |x|
    # if x == ' '
    #   result << ['%', '2', '0']
    # else
    #   result << x
    # end
    result << (x == ' ' ? ['%', '2', '0'] : x)
  end
  result.join('')
end

p replace_spaces('This is a test')
p replace_spaces_with_string('This is a test')
