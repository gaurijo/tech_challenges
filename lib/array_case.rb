def array_case(sentences)
  sentences.map {|sentence| p sentence.length.odd? ? sentence.downcase : sentence.upcase}
end

sentences = ["hello how are you", "my name is G", "bye feliciaa"]
array_case(sentences)

# Write method that takes an array of English sentences
# and prints out each sentence
# if the sentence has an odd number of letters 
# the method prints out the sentence in all lowercase 
# if the sentence has an even number of letters 
# the method prints out the sentence in all uppercase 

# using .each:

# sentences.each do |sentence|
#   if sentence.length.even?
#     p sentence.upcase 
#   else 
#     p sentence.downcase
#   end
# end