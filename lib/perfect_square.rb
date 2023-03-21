def is_perfect_square(num)
  # Given a positive integer, return true if num is a perfect square without using built in methods like sqrt
  if Math.sqrt(num) % 1 == 0
    true 
  else 
    false
  end

end

p is_perfect_square(14)