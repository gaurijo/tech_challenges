def climb_stairs(n)
  # You are climbing a staircase. It takes n steps to reach the top.
  # Each time you can either climb 1 or 2 steps. 
  # In how many distinct ways can you climb to the top?

  # stair zero, one way to get there
  # stair one, one way to get there
  # stair two, two ways to get there (step 0 to step 2 or step 0 to step 1 to step 2)

  steps = {0 => 1, 1 => 1, 2 => 2, 3 => 3}
  i = 2 
  while i <= n 
    steps[i] = steps[i-1] + steps[i-2]
    i += 1
  end
  return steps[n]
end

p climb_stairs(4)

# 1+1+1+1
# 2+1+1
# 2+2
# 1+1+2
# 1+2+1
