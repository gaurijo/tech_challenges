# You are given three arrays of equal size. Each array has 1 million RANDOM integer values.
# Your goal is to write a method/function that will return an array of any/all values which are present in all three arrays.

# input: 3 arrays of equal length 
# output: value(s) that are found in all 3 arrays 
# iterate through arr1 arr2 arr3 to find matching values 
# return matching values 

# compare arr1 and arr2, if values in arr1 included in arr2 
# compare that comparison to arr3 
def matching_values(arr1, arr2, arr3)
    match = arr1 & arr2 & arr3 
    match.join.to_i 
end 

# arr1 = [1, 2, 3, 4, 5]
# arr2 = [2, 4, 6, 8, 10]
# arr3 = [1, 2, 5, 7, 9]
p matching_values(arr1, arr2, arr3)
