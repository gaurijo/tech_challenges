# Your task is to make a function that can take any non-negative integer as an argument and return it with its digits in descending order. 
# Essentially, rearrange the digits to create the highest possible number.


# pseudo: 
  #split int into array of strings 
  #sort the array and reverse it 
  #join the array into a new number 
def descending(integer)
  string = integer.to_s.split("")
  string_desc = string.sort.reverse
  string_desc.join.to_i
end

p descending(42145)