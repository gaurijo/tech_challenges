def majority_element(nums)
  hash = nums.tally
  egg = hash.values.max
  hash.key(egg)
end

nums = [2,2,1,1,1,2,2]
p majority_element(nums)