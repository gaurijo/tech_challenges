#Create a method/function that will intake a set of brackets 
#[ { ( as a string and determine if the brackets are well-formed (match)
# convert bracket string into array of elements 
# split the array into two arrays, a left bracket array and a right bracket array 
# determine if both array sizes are equal 

def bracket_matcher?(brackets)
  brackets = brackets.split("").to_a   
  left_bracket = ['{', '[', '(']
  right_bracket = ['}', ']', ')']
  
  if brackets[0] == left_bracket[0] && 
    brackets[-1] == right_bracket[0]
    true 
  else 
    false 
  end
end


p bracket_matcher?('[{]')


# '{}' #string input
# brackets = ['{', '}'] #converted into array
# brackets[0] == left_bracket[0] && brackets[-1] == right_bracket[0] #the first element of brackets array should equal 
# the first element of the left brackets array; the last element of the brackets array should equal the first 
# element of the right brackets array 



