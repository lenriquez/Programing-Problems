

# Assumptions
# - English characters and not more than that
def unique_char?(string)
  return '' if !string.nil? && string.empty?

  string = string.chars.sort!

end


p is_unique_char?("aaaabaaabbbc  ")