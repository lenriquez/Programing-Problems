=begin
https://www.codeeval.com/open_challenges/38/
You are given a number N and a string S. Print all of the possible ways to write a string of length N from the characters in string S, comma delimited in alphabetical order.

INPUT SAMPLE:

The first argument will be the path to the input filename containing the test data. Each line in this file is a separate test case. Each line is in the format: N,S i.e. a positive integer, followed by a string (comma separated). E.g.

1,aa
2,ab
3,pop
OUTPUT SAMPLE:

Print all of the possible ways to write a string of length N from the characters in string S comma delimited in alphabetical order, with no duplicates. E.g.

a
aa,ab,ba,bb
ooo,oop,opo,opp,poo,pop,ppo,ppp
=end

@solution = [] 
def string_list num, string, sol=""
   if num <= 0
   	@solution << sol
        return
   end

   num -= 1
   string.each_char do |char|
   	string_list( num, string, sol + char)
   end 
end

File.open(ARGV[0]).each do |line|
    @solution = []
    num , string = line.delete("\n").split(",")
    string.squeeze!
    string = string.split("").uniq.join
    string_list(num.to_i, string)
    @solution.sort!
    puts @solution.join(",")
end
