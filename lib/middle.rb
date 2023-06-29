## Given a string, return the middle character. If it's even return the middle 2 characters.

def get_middle(s)
  characters = s.split("") 
  if characters.length.odd? 
    index_value = characters.length / 2
    return characters[index_value]
  else 
    index_value = characters.length / 2 
    return characters[index_value - 1] + characters[index_value] 
  end
end