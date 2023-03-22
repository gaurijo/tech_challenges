def is_happy(n)
  result = 0 
  max_iterations = 1000
  until result == 1 || max_iterations == 0 do
    array = n.to_s.split(//).map{|n| n.to_i}
    result = array.map{|a| a*a}.sum
    n = result 
    max_iterations -= 1
  end
  return result == 1
end

n = 19
p is_happy(n)