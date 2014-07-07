=begin
Jigar got a sequence of n positive integers as his birthday present! He likes consecutive subsequences whose sum is divisible by k. He asks you to write a program to count them for him.

Input Format 
The first line contains T, the number of testcases. 
T testcases follow. Each testcase consists of 2 lines. 
The first line contains n and k separated by a single space. 
And the second line contains n space separated integers.

Output Format 
For each test case, output the number of consecutive subsequenences whose sum is divisible by k in a newline.

Constraints 
1 ≤ T ≤ 20 
1 ≤ n ≤ 106 
1 ≤ k ≤ 100 
1 ≤ a[i] ≤ 104 

Sample Input

2
5 3
1 2 3 4 1
6 2
1 2 1 2 1 2
Sample Output

4
9
Explanation

For

1 2 3 4 1
there exists, 4 subsequences whose sum is divisible by 3, they are

3
1 2
1 2 3
2 3 4
For

1 2 1 2 1 2
there exists, 9 subsequences whose sum is divisible by 2, they are

2
2
2
1 2 1
1 2 1
1 2 1 2
2 1 2 1
1 2 1 2
2 1 2 1 2
=end

repeat = gets.to_i
def consecutive_subsequence array, length, k
	secuence = 0
	for i in 0..length
		tmp = 0
		for j in i..length
			tmp += array[j].to_i
			if tmp % k == 0
				secuence += 1
			end
		end
	end
	puts secuence
end

def consecutive_subsequence2 array, length, k
	a= Array.new(k,0)
	a[0] = 1;
	pref_sum = 0;
	array.each do |value| 
		pref_sum += value.to_i
		pref_sum %= k
		a[pref_sum]+=1
	end

	res = 0;
  	for i in 0..k-1
    	res += a[i] * (a[i] - 1) / 2;
    end
  	puts res;
end

for i in 1..repeat
	input = gets.gsub("\n","").split(" ")
	length = input[0].to_i() - 1
	k = input[1].to_i
	array = gets.gsub("\n","").split(" ")
	consecutive_subsequence2 array, length, k
end
