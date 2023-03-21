def two_sum(nums, target)
	hash = nums.map { |n| target - n }.each_with_index.to_h
	nums.each.with_index {|x, j| return [hash[x], j] if hash[x] and j != hash[x]}
end

# def two_sum(nums, target)
#   arr = []
#   frog = nums.each_cons(2).to_a
#   cow = frog.select {|f| f.sum == target}.flatten # [3, 4] 
#   ind1 = nums.each_index.select{|i| nums[i] == cow[0]} 
#   ind2 = nums.each_index.select{|i| nums[i] == cow[1]}
#   arr << ind1
#   arr << ind2
#   if cow[0] == cow[1]
#     p arr[0]
#   else 
#     p arr.flatten 
#   end
# end

# two_sum([1,2,3,4,5], 7)
# two_sum([3, 3], 6)

# def two_sum(nums, target)
#   arr = []
#   nums
#   nums.each_with_index do |num, index| 
#     pair = nums[index+1..-1].find {|n| n + num == target }
#     require 'pry'; binding.pry 
#     if pair 
#       arr << index 
#       arr << nums.find_index(pair)
#       break 
#     end
#   end
#   p arr 
# end

two_sum([3,2,3], 6)
two_sum([3,3], 6)
two_sum([1,2,3,4], 7)