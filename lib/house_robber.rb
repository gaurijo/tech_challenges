def rob(nums)
  nums.inject([0, 0, 0]) {|r, v| [r[1..2].max + v] + r[0..1] }.max
  # The block takes in r, the accumulator and v, the current value of nums
  # in each iteration inside the block, the maximum amount of money that
  # can be robbed up to the current house is calculated using the previous 
  # two values in 'r' and the current value of the current house in 'nums'
  # At the end of the iteration, 'inject' returns an array of three integers
  # representing the max amount of money that can be robbed 
  # The 'max' method returns the max value. 
end

  # V1:

  #You are planning to rob houses along a street. You cannot rob adjacent houses.
  #Given an array of integers representing the amount of money in each house
  #return the maximum amount of money you can rob without alerting the police
  #pseudo: return the value at zero index and then every other (values at index 0, index 2, index 4 etc until the end of the array)
  # return nums[0] if nums.length == 1
  # if nums array is only one digit then return that first digit
  # return [nums[0], nums[1]].max if nums.length == 2
  # if nums array is exactly two digits then return the max digit
  # arr = [nums[0], nums[1]].max 
  # initialize a new array with the first and second elements of the nums array and find the max value
    # for i in 2...nums.length 
      # starting at 2 (because nums[0] and nums[1] have been defined already)
      # arr[i] = [arr[i-1], arr[i-2] + nums[i]].max 
      # for each integer starting at 2 ending at nums array length do the following:
      # set the ith index of the arr to equal the maximum of the following:
      # the index of the array at i - 1, at i - 2, plus index i of nums. 
      # Then retrieve the maximum number from that
    # end
  # return arr[nums.length - 1]
  # finally, return the value of array index[whatever nums.length - 1 equals]

  #V2:

  # arr = []
  # nums.each_with_index do |n, i|
  #   arr << i 
  # end
  # arr 
  # values = arr.map{|a| a if a.even?}.compact 
  # values.map {|v| nums.values_at(v)}.flatten.sum
# end

# The above method is really close however it doesn't maximize the money you can make
# If nums = [1, 2] the max amount you can rob would be 2
# However based on the code it will return 1
nums = [2,7,9,3,1]
p rob(nums)