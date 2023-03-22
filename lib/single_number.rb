def single_number(nums)
  nums.tally.key(1)
end

nums = [4,1,2,1,2]
p single_number(nums)