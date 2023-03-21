# def is_valid_walk?(walk)
#   if (walk.length == 10 && walk.each_cons(2).none?{|a, b| a == b}) && 
#     ((walk[0] == 'n' && walk[-1] == 's') || (walk[0] == 'w' && walk[-1] == 'e')) || ((walk[0] == 's' && walk[-1] == 'n') || (walk[0] == 'e' && walk[-1] == 'w')) 
#     true 
#   else 
#     false 
#   end
# end

def is_valid_walk(walk)
  walk.count('n') == walk.count('s') && walk.count('e') == walk.count('w') && walk.length == 10 ? true : false
end

p is_valid_walk(walk=['n','s','n','s','n','s','n','s','n','s'])
p is_valid_walk(walk=['w','e','w','e','w','e','w','e','w','e','w','e'])
p is_valid_walk(walk = ['w'])
p is_valid_walk(walk=['n','n','n','s','n','s','n','s','n','s'])