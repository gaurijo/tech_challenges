# Given a string of words, you need to find the highest scoring word.
# Each letter of a word scores points according to its position in the alphabet

def high_score(x)
  alpha_hash = {"a" => 1, "b" => 2, "c" => 3, "d" => 4, "e" => 5, "f" => 6, 
                  "g" => 7, "h" => 8, "i" => 9, "j" => 10, "k" => 11, "l" => 12, "m" => 13, 
                  "n" => 14, "o" => 15, "p" => 16, "q" => 17, "r" => 18, "s" => 19, 
                  "t" => 20, "u" => 21, "v" => 22, "w" => 23, "x" => 24, "y" => 25, "z" => 26} 
  words_array = x.split 
  if words_array.length == 1 
    chars = words_array.map {|w| w.split("")}.flatten
    score = chars.map {|c| alpha_hash[c]}.sum
    return words_array[0]
  else 
    chars = words_array.map {|w| w.split("")}
    scores = chars.map{|char|char.map{|c| alpha_hash[c]}.sum}
    high_score = scores.max 
    max_index = scores.index(high_score)
    return words_array[max_index]
  end
end

  # pseudo:
    # create a hash that assigns alphabet letters as keys and 1-26 as values for each letter
    # map through a given string to split up each character and then plug it into the hash to find the 
    # corresponding value. Then take the sum of all those values to get the 'score'. If you have more than one word
    # do this for all the words and then take the highest score value of those. 
    # get the index of the scores at the highest value 
    # plug that into the words_array to find the word at index high score

p high_score("abda xxx")