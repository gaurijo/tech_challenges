#exercism challenge
#determine if a sentence is a panagram (contains every letter of the alphabet, at least once)

def panagram?(sentence)
  require 'pry'; binding.pry 
  arr = sentence.split("") #split sentence into an array of letters
  arr -= [" "] #ignore empty spaces
  alphabet = ("a".."z").to_a #convert alphabet to array of letters
  if (alphabet & arr) == alphabet #compare both arrays; if the elements are the same in both, the sentence is a pangram
    "#{sentence} is a panagram"
  else 
    "#{sentence} is NOT a panagram"
  end
end

p panagram?("the quick brown fox jumps over the lazy dog")
#true 

p panagram?("hello my name is g")
#false

# def is_pangram(strings)
#   # Create a set of all the lowercase letters
#   letters = ('a'..'z').to_a.to_set

#   # Map the array of strings to an array of booleans indicating whether
#   # each string is a pangram
#   results = strings.map do |string|
#     # Downcase the string and split it into an array of characters
#     chars = string.downcase.split('')

#     # Create a set of the unique characters in the string
#     char_set = chars.to_set

#     # Check if the set of unique characters includes all the letters
#     char_set.superset?(letters)
#   end

#   # Map the array of booleans to an array of 1s and 0s
#   results.map { |result| result ? 1 : 0 }
# end

# p is_pangram(["the quick brown fox jumps over the lazy dog", "hello my name is g"])