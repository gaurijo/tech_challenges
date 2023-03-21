def remove_duplicates(nums)
  num_strings = nums.map {|n| n.to_s}.uniq
  num_stringsss = num_strings.map{|s| s.to_i}.count 
  nums.tally 
  nums.tally.values # num.tally counts the occurences of each value inside nums array; values returns the values from each key value pair
  nums.tally.values.map{|x| x > 1} #maps through the occurences values and checks if any element is greater than 1. if so returns true.
  p "#{num_stringsss + 'hello'}"
  require 'pry'; binding.pry 
  p num_strings.map{|n| n.to_i}
end

#nums is an array of integers sorted in increasing order
#remove the duplicates so that each unique element only appears once



remove_duplicates([1,1,2,3])