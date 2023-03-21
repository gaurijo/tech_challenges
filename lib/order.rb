def order(words)
  words = words.split.sort_by {|word| word.match(/\d+/)[0].to_i }.join(" ")
  # I got stuck after the sort_by enumerator. 
  # I learned that the match(/\d+/) looks for the next consecutive digit 
  # in this case the first one that matches that criteria. 
  # It transforms it from string to integer 
  # it then is joined together to form a string, separated by a space btween each word. 
end

p order("is2 Thi1s T4est 3a") # => "Thi1s is2 3a T4est"