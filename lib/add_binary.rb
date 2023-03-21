def add_binary(a, b)
  x = a.to_i(2) # '11'.to_i(2) => (1*2^1 + 1*2^0) => 3
  y = b.to_i(2) # '1'.to_i(2) => 1
  
  while y != 0
      answer = x ^ y
      carry = (x & y) << 1
      x = answer
      y = carry
  end
  
  return x.to_s(2)
end

# '111'.to_i(2) == 7
# 2 1 0
# 1 1 1

# (2^2 * 1) + (2^1 * 1) + (2^0 * 1)

# 4 + 2 + 1 = 7