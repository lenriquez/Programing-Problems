def palindrome_permutation(phrase)
  hash = {}
  count_odds = 0
  phrase.downcase!
  phrase.gsub!(' ', '')

  phrase.chars.each do |x|
    if hash[x].nil?
      hash[x] = 1
      count_odds += 1
    else
      hash[x] = nil
      count_odds -= 1
    end
  end

  count_odds <= 1
end

p palindrome_permutation('Tact Coa')
