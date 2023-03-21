# Given five positive integers, find the minimum and maximum values 
# that can be calculated by summing exactly four of the five integers. 
# Then print the respective minimum and maximum values as a single line of two space-separated long integers.

# Ex: arr = [1, 3, 5, 7, 9]
# The minimum sum is 1 + 3 + 5 + 7 = 16
# The maximum sum is 3 + 5 + 7 + 9 = 24 
# The method should print 16 24 

def min_max(arr)
  arr = arr.sort 
  x = arr[0..3].sum 
  y = arr[1..-1].sum 
  z = arr[0] + arr[2..-1].sum 

  new_arr = [x, y, z]
  print new_arr.min, " "
  print new_arr.max
end

arr = [1, 2, 3, 4, 5]
arr = [1, 3, 5, 7, 9]
arr = [7, 69, 2, 221, 8974]

min_max(arr)