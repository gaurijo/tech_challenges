def unique(nums)
  nums.tally.values.map{|v| v > 1}.include?(true)
end

nums = [1,2,3,1]
p unique(nums)