# A narcissistic number is a positive number 
# which is the sum of its own digits, 
# each raised to the power of the number of digits in a given base

# Given a value determine if it is narcissistic or not (boolean)

# pseudo:
  # find length of value (convert to array) = value of power
  # apply value of power to each digit => map through array
  # sum the digits 
  # the result should equal the original value
def narcissistic?(value)
  string = value.to_s.split("")
  result = string.map {|s| s.to_i ** string.length}.sum 
  if result == value 
    true 
  else 
    false
  end
end

p narcissistic?(153)