# start at 0 and increment by 1
# convert start to a string, reverse it, then back to integer 
# the start number plus its reversal is a palindrome (101 -> "101" -> "101" -> 101)
# check that the palindrome is greater than 1000 
# if both of these conditions are met, shovel said number into an array 
# keep doing this until the array count is 25 
# return the number not the sum 

def palindrome_sum 
  start = 0 #start at 0 
  valid_arr = []
  until valid_arr.length == 25 #until 25 elements in the array 
    start += 1 #increment starting number by 1
    palindrome = (start.to_s.reverse.to_i + start) #add the starting number and its inverse (convert to string then reverse then back to int)
      if palindrome == palindrome.to_s.reverse.to_i && palindrome > 1000 #if the sum is a palindrome AND greater than 1000
        valid_arr << start #add that number to the array 
      end
    end
    valid_arr #return the array 
end

p palindrome_sum 