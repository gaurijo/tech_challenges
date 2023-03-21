def merge(nums1, m, nums2, n)
  nums1.delete(0)
  m = nums1.length
  n = nums2.length
  nums1 = nums1 + nums2 
  nums1.sort 
end

nums1 = [1,2,3,0,0,0]
# since we're ignoring 0s, m = 3 
nums2 = [2,5,6]
# n = 3

p merge(nums1, 3, nums2, 3)

# The final array should be length 6
# output: [1,2,2,3,5,6]

# pseudo: Add both sets of arrays together to form one array 
# delete any 0 values 

# nums1 + nums2 => [1,2,2,3,0,0,0,5,6]

  # Given two integer arrays nums1 and nums2 AND two integers m and n 
  # representing number of elements in nums1 and nums2 respectively
  # merge nums1 and nums2 into a single array sorted in increasing order
  # The final array should be stored inside the array nums1 
  # Tips: nums1 has a length of m + n, where first m elements denote what should be merged
  # and last n elements denote 0 and should be ignored. 
  # nums2 has a length of n
