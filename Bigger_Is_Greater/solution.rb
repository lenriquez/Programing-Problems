
   
# Hash with letter so I can get the lexicographically answer
$alphabet = {
	a: 1,
	b: 2,
	c: 3, 
	d: 4,
	e: 5, 
	f: 6,
	g: 7,
	h: 8,
	i: 9,
	j: 10,
	k: 11,
	l: 12,
	m: 13,
	n: 14,
	o: 15,
	p: 16,
	q: 17,
	r: 18,
	s: 19,
	t: 20,
	u: 21,
	v: 22,
	w: 23,
	x: 24,
	y: 25,
	z: 26
}

# Find the first letter with an small right neighbor compare to itself
# return its index
def find_small_neighbors problem
  tmp_char = nil
  index = 0
  problem.each_char do |char|
    unless tmp_char
      tmp_char = char
      next 
    end
    break if $alphabet[tmp_char.to_sym] > $alphabet[char.to_sym]
    index += 1
  end
  return index
end

# Search left to right, swapping the bigger number find the biggest number 
def apply_solution problem
  # Reverse the String to iterate right to left
  index = find_small_neighbors problem.reverse!

  return "no answer" if index == (problem.size - 1)

  first_half = problem.slice!(0..index).chars.sort.join
  first_half << problem
  return problem.reverse!
end

# Get Data 
def main  
  test_cases = gets.chomp
  test_cases = test_cases.to_i if test_cases
  test_cases.times do
    problem = gets.chomp
    puts apply_solution problem if problem 
  end
end

main
