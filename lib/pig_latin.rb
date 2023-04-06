def pig_it(text)
  text.split(" ")
  text.split(" ").map {|w| w.split(//)}
  reverse = text.split(" ").map {|w| w.split(//)}.map {|w| w.rotate}
  smush = reverse.map {|s| s << 'ay'}
  smush.map {|w| w.join}.join(" ")
end

text = 'Pig latin is cool'
p pig_it(text)

# Move the first letter of each word to the end of it
# add 'ay' to the end of the word. 

#transform string to array of words (letters if it's only one word)
#rotate the array (rotate? shift? unshift?) so the first letter is moved to the end
#transform the array of characters back into string

# ex: 'Pig latin is cool' => igPay atinlay siay oolcay