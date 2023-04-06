def pivot_index(nums)
  # Given an array of ints nums, calculate the pivot index
  # pivot index: index where the sum of all the numbers strictly to the LEFT of the index is equal to
  # the sum of all the numbers strictly to the index's RIGHT 
  # if the index is on the left edge of the array, then the left sum is 0 because there are no elements
  # to the left. Same applies to the right edge. 
  # Return the left most pivot index. If no such index exists return -1.

  # Ex: 
  # Input: nums = [1,7,3,6,5,6]
  # Output: pivot index is 3 because nums[0] + nums[1] + nums[2] = 11 = nums[4] + nums[5]
  # left_sum = iterate through each value in the array, for each value sum all the values to the left
  # do this until the left_sum == total sum of nums 
  # left_sum[i] -> left_sum[1] = 0 
    # total - left_sum - index[val] = 28 - 0 - 1 = 27
    # does 27 == 0? No
  # left_sum[7] = 1
    # total - left_sum - index[val] = 28 - 1 - 7 = 20
    # does 20 == 1? No
  # left_sum[3] = 8 
    # total - left_sum - index[val] = 28 - 8 - 3 = 17
    # does 17 == 8? No 
  # left_sum[6] = 11 
    # total - left_sum - index[val] = 28 - 11 - 6 = 11
    # does 11 == 11? YES!
  left_sum = 0 
  total = nums.sum 
  nums.each_with_index do |num, index|
    total -= num 
    return index if left_sum == total 
    left_sum += num 
  end
  return -1
end

p pivot_index([1,7,3,6,5,6])