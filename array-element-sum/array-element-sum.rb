#Given an unsorted array of integers, find first two numbers  in the array that equal a given sum.
#[3,4,6,1]
# 3 + 4 = 7
# 3 + 6 = 9
# 3 + 1 = 4
# 4 + 6 = 10
# 4 + 1 = 5
# 6 + 1 = 7

def sumTwo(array, sum)
	for i in 0..array.length-2
		n1 = array[i]
		n2 = array[i+1]
		if n1 + n2 == sum
			output = [n1, n2]
			break
		end
	end
	output ||= "no pairs sum to this input"
	puts "#{output}"
	return output
end

sumTwo([3,4,6,1], 10)
	#output should be 4 and 6
sumTwo([8,1,5,2], 75)
	#output should be 'no pairs sum to this input'
sumTwo([2,2,3,1], 4)
	#output 2 and 2

