def XO(str)
  #write a method that takes in a string of xs and os and find if the string contains
  #equal number of xs as it does os; return boolean
  str = str.downcase.split(//)
  exes = str.map {|c| c.include?('x')}.count(true)
  ohs = str.map {|c| c.include?('o')}.count(true)
  if exes == ohs 
    true 
  else 
    false 
  end 
end
p XO('xo')
p XO('Xoo')