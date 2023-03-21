# Given a square matrix calculate the absolute difference between the sums of its diagonals 

def diagonal_diff(arr)
  left = right = 0

  for i in 0..(arr.length - 1) #for the integer in the range left/right diags ending in the length of the array minus 1
    left += arr[i][i] 
    right += arr[i][-(i+1)]
  end
    p (left - right).abs 
end
  arr = [3,
  11, 2, 4,
  4, 5, 6,
  10, 8, -12]
diagonal_diff(arr)


# The first element of the array tells us the size of the square (3 x 3)
# The left to right diag 11 + 5 - 12 = 4; 
# The right to left diago 4 + 5 + 10 = 19;
# The absolute difference is |4 - 19| = 15

# the 2nd row 1st element + 3rd row 2nd element + 3rd row 3rd element = left diag
# the 2nd row 3rd element + 2nd row 2nd element + 3rd row 1st element = right diag 

# arr[1..3] = array 1 [11, 2, 4]
# arr[4..6] = array 2 [4, 5, 6]
# arr[7..9] = array 3 [10, 8, -12]

# array1[0] + array2[1] + array3[2] = left
# array1[-1] + array2[1] + array3[0] = right 

# left - right = result