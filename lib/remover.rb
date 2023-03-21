def remove_smallest(numbers)
  numbers2 = numbers.dup
  if numbers.empty?
    return []
  else 
    smallest = numbers.min
    numbers2.delete_at(numbers.index(smallest))
    numbers2
  end
end

p remove_smallest([1, 1, 2, 3, 4, 5])

# Challenge:
# remove the smallest number from an array 
# (if there are repeat values, remove the smallest number at the lowest index) 
# return your answer as a new array, NOT as a mutation of the original array 
