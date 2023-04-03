def running_sum(nums)
  # Given an array nums, return the running sum of nums
  # running_sum[i] = sum(nums[0]...nums[i])
  # Ex: Input: nums = [1,2,3,4]
  # Output: [1,3,6,10] because [1, 1+2, 1+2+3, 1+2+3+4]
  # pseudo: 
  # map through the nums array, returning the first element of nums plus every element after it in cumulative order
  # counter equal to 0 that gets incremented with each value inside block 
  counter = 0
  nums.map{|x| counter += x}
end

nums = [1,1,1,1,1,1]
p running_sum(nums)