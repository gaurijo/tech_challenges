# build a method to flatten a nested array (cannot use .flatten)
# input: nested array (e.g nums = [1, 2, 3, [4, 5], [6]])
# output: single array (e.g. nums = [1, 2, 3, 4, 5, 6])
# split the original array by elements so it becomes arr1 = [1, 2, 3] arr2 = [4, 5] arr3 = [6]
# convert array to string, then join together to remove the array. 

# convert nums array into single integer
# shovel single integer into an empty array
# convert array of single integer into float
# then convert to integer
# then convert integer to string
# split the string into array of string elements. 
# map over this array of string elements and convert each string element into an integer 


def flattener(nums)
  arr = []
  nums = nums.join.to_i 
  arr << nums 
  float = arr.join.to_f
  int = float.to_i
  str_arr = int.to_s.split("") 
  str_arr.map {|s| s.to_i}
end

nums = [1, [[2], 3, 4], [5]]

p flattener(nums)
# p nums.flatten