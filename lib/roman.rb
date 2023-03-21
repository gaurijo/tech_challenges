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

p to_roman(2000)