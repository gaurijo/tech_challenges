# def intersection(nums1, nums2)
#   # Given two integer arrays, return an array of their intersection (numbers that appear in both lists)
#   nums1 & nums2 
# end

# p intersection(nums1, nums2)

def intersect(nums1, nums2)
  frequency = {}
  for n in nums1 do 
    frequency[n] = frequency.fetch(n, 0) + 1
  end
  result = []
  
  for n in nums2 do 
    if frequency.include?(n) && frequency[n] > 0
      result << n 
      frequency[n] -= 1
    end
    result 
  end
end
nums1 = [1,3,4]
nums2 = [1,1,2,7,6]

p intersect(nums1, nums2)