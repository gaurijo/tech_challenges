# takes in integer and returns next palindrome 
# palindrome is same forward and backwards eg 101

# take in integer , increment by 1 
# determine if integer when reversed is equal to the original integer 
# integer converted to string, then reversed 
# if equal then return the integer 
# otherwise do the method again for the next integer increment


def next_palindrome(int)
  int += 1 
  str = int.to_s
  if str == str.reverse 
    return int 
  else 
    return next_palindrome(int)
  end
end

p next_palindrome(200)