require 'pry'

def two_sum(nums, target)
    output = []
    for i in 0..nums.length-1
        x = target - nums[i]
        if nums[i+1..-1].include?(x)
            output << i
            output << nums[i+1..-1].find_index(x)
        end
    end
    output
end

binding.pry
0