def string_covertion(string)
  return '' if string.size.zero?

  result = ''
  index = 0
  tmp = string.chars[0]
  count = 1
  string.chars.each do |x|
    if index.zero?
      index = 1
      next
    end

    if tmp == x
      count += 1
    else
      result << "#{tmp}#{count}"
      tmp = x
      count = 1
    end
  end
  result << "#{tmp}#{count}"
end

p string_covertion('aabcccccaaa')
