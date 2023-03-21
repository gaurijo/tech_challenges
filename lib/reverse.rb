def reverse(items)
  items = [1, 2, 3, 4]
  reversed_items = []
  i = items.length - 1 
  while i >= 0 
    reversed_items << items[i] 
    i -= 1
  end
  reversed_items 
end

# items.length == 4; 4 -1 = 3. i = 3 
# while i is greater than or equal to 0 do this: 
# shovel in items at index 3 => 4 into reversed_items array
# decrement i by 1 (now i = 2) and start the process over (shovel in items at index 2 => 3 into reversed_items
# return the new array => [4, 3, 2, 1]