def solution(arr1, arr2)
  output_arr = []
  counter = 0 
  until counter == arr1.size do 
      arr1.each_with_index do |element, i| 
        arr_j = (arr1[i]-arr2[i])
        output_arr << arr_j
        counter += 1 
      end
    result = output_arr.map{|a| a*a}.sum / output_arr.size.to_f
  end
  result
end

  # Input: two arrays of integers, equal length 
  # Output: compare values between both arrays, square the abs value difference between th two
  # Return the average of those squared abs value differences

  # ex: arr1 = [1,2,3]
  # arr2 = [4,5,6]
  # output: 9, because (9+9+9)/3; 4-1 = 3, 5-2 = 3, 6-3 = 3 ; 3^2 + 3 ^ 2 + 3 ^2 divided by length 3
arr1 = [10,20,10,2]
arr2 = [10,25,5,-2]
p solution(arr1, arr2)