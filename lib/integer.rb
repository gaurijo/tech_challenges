def reverse(x)
  # Given a signed 32-bit integer x, return x with its digits reversed
  # if reversing causes the value to go outside the signed 32-bit int range then return 0

  # Ex: x  = 123; output: 321
  reverse_num = x.to_s.reverse.split(//)
  if reverse_num.include?("-") 
    x.to_s.reverse.split(//).rotate(-1).join.to_i
  else 
    reverse_num.join.to_i
  end 
end

x = -123
p reverse(x)

# This solution isn't optimal because it doesn't meet the second criteria of returning 0 when value is outside 32 bit range