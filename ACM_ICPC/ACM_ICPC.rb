

require "awesome_print"

=begin
Submissions will no longer be placed on the leaderboard. You may still attempt 
this problem for practice.
You are given a list of N people who are attending ACM-ICPC World Finals. 
Each of them are either well versed in a topic or they are not. 
Find out the maximum number of topics a 2-people team can know.
And also find out how many teams can know that maximum number of topics?

Input Format

The first line contains two integers N and M separated by a single space,
where N represents the number of people, and M represents the number of topics.
N lines follow.
Each line contains a binary string of length M. In this string, 1 indicates that
the ith person knows a particular topic, and 0 indicates that the ith person 
does not know the topic.

Output Format

On the first line, print the maximum number of topics a 2-people team can know. 
On the second line, print the number of teams that can know the maximum number 
of topics. 

Constraints

2 ≤ N ≤ 500 

1 ≤ M ≤ 500
Sample Input

4 5
10101
11100
11010
00101
Sample Output

5
2
Explanation

(1, 3) and (3, 4) know all the 5 topics. So the maximal topics a 2-people team knows is 5, and only 2 teams can acheive this.	
=end


tmp_input = gets.gsub("\n","").split(" ")
val1 = tmp_input[0].to_i
val2 = tmp_input[1].to_i

a = Array.new()
for i in 0..val1
	val3 = gets
	if val3  != nil
    	val3 = val3.gsub("\n","") 
    	a << val3
    end
end

max = 0
max_array = Array.new(val2,0)
for i in 0..(a.length - 1)
    for j in i..(a.length - 1)
      tmp = (a[i].to_i(2) | a[j].to_i(2)).to_s(2).count "1"
      if tmp >= max
         max = tmp
         max_array[max] = max_array[max] == nil ? 1 :  max_array[max] + 1
      end
      
    end
end

puts max
puts max_array[max]