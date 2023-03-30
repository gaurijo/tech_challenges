def to_camel_case(str)
  # Given a string convert the string to camel case format
  # Ex: str = "the-stealth-warrior" => "theStealthWarrior"
  # pseudo:
  # split the string by the hyphen or underscore to create an array of words
  # for every word except the first turn the word into capitalized (unless the first word is originally capped then leave it as is)
  # join the array together and return the new string
  camel = []
  delimiters = ["-", "_"]
  if str.include?(delimiters.first) && !str.include?(delimiters.last)
    str.split("-").each_with_index do |s, i|
      camel << s.capitalize if i != 0
    end
    str.split("-").first + camel.join
  elsif str.include?(delimiters.last) && !str.include?(delimiters.first)
    str.split("_").each_with_index do |s, i|
      camel << s.capitalize if i != 0
    end
    str.split("_").first + camel.join
  elsif str.include?(delimiters.first) && str.include?(delimiters.last)
    str.split(Regexp.union(delimiters)).each_with_index do |s, i|
      camel << s.capitalize if i != 0
    end
    str.split(Regexp.union(delimiters)).first + camel.join
  end
end

str = "the_stealth-warrior"
p to_camel_case(str)