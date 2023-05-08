def to_roman(num)
  # Create a hash with the Roman Numeral equivalents
  roman_numerals = {
    1000 => "M",
    900 => "CM",
    500 => "D",
    400 => "CD",
    100 => "C",
    90 => "XC",
    50 => "L",
    40 => "XL",
    10 => "X",
    9 => "IX",
    5 => "V",
    4 => "IV",
    1 => "I"
  }

  result = ""

  roman_numerals.keys.each do |value|
    # Loop through the Roman Numeral values in descending order
    # as many times as needed
    while num >= value
      # while the num argument is greater or equal to the value of the element in the array, 
      num -= value
      # decrement num by the value 
      result << roman_numerals[value]
      # require 'pry'; binding.pry 
      # add the corresponding Roman Numeral to the result string
      # require 'pry'; binding.pry 
    end
  end
  result
end
p to_roman(1994)

def roman_to_int(s)
  roman_hash = {"I" => 1, 
                "V" => 5,
                "X" => 10,
                "L" => 50,
                "C" => 100,
                "D" => 500,
                "M" => 1000
              }
  result = 0
  previous = 0

  # reverse the roman string array, and for each character:
  # if the current character's value is greater than or equal to previous
  # increment the result with the current value 
  # otherwise decrement the result with the current value 
  # This is because in Roman numerals, a smaller number to the left of a larger number means that the smaller number is subtracted from the larger number (e.g., IV is 4, not 6).
  # set the previous to the current value so that it can be used in the next iteration of the loop.
  # give the result 
  s.reverse.each_char do |char|
    current = roman_hash[char]
    if current >= previous 
      result += current 
    else
      result -= current 
    end
    previous = current
  end
  result  
end

p roman_to_int("MCMXCIV")


