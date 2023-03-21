# def is_square(x)
#   if x > 0 || x == 0 
#     y = Math.sqrt(x).to_i
#       if (x == y * y)
#         require 'pry'; binding.pry 
#         true
#       else 
#         false 
#       end 
#   else 
#     false 
#   end
# end

# p is_square(69)

# def next_pal(val)
#   val += 1
#   str = val.to_s
#   if val == str.reverse.to_i
#     return val 
#   else 
#     return next_pal(val)
#   end 
# end

def next_pal(val)
  val += 1
  str = val.to_s
  if val == str.reverse.to_i 
    return val 
  else 
    next_pal(val)
  end
end

p next_pal(11)
  # i = 0
  # x = val.to_s.reverse
  # x = x.to_i 
  # if x == val
  #   p x 
  #   require 'pry'; binding.pry 
  #   p val.to_s.reverse.to_i + 1
  # else 
  #   val += 1
  #   next_pal(val)
  # end 
