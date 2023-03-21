def my_sqrt(x)
  # Given a positive integer x, return the square root of x, and round it down to nearest integer
  # The returned integer must be positive as wel 
  # You cannot use a built in exponent operator

  Math.sqrt(x).to_i
end

p my_sqrt(8)