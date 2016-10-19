#!/usr/bin/ruby

$bracket = { '{': '}', '[':']', '(':')' }

def check_bracket(expression, looking = [])
  return true if expression.size == 0 && looking.size == 0
  return false if expression.size == 0 && looking.size != 0 

  bracket = expression.shift
  # If is not found it means that is a closing bracket
  if !$bracket[bracket.to_sym]
    return false if !looking[0] ||  bracket != looking[0]
    looking.shift
  else
    looking.unshift($bracket[bracket.to_sym])
  end

  return check_bracket(expression,looking) 
end

def main()
  test_cases = gets.strip.to_i
    for index in (0...test_cases)
      expression = gets.strip
      puts check_bracket(expression.split("")) ? "YES" : "NO";
    end
end 

main()

