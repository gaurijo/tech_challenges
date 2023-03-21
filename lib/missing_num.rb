def missing_number(nums)
  # Given an array nums containing n distinct numbers in the range [0, n] return the ONLY number in the range that is missing from the array
  # nums = [3, 0, 1]
  # output: 2 | explanation: n = 3 because nums.length is 3. All numbers are in the range [0,3] and the only missing number is 2.

  # for each number in nums check if it is not present within the range of [0, n]
  n = nums.length 
  for i in 0..n do 
    return i if !nums.include?(i)
  end
end

p missing_number([9,6,4,2,3,5,7,0,1])