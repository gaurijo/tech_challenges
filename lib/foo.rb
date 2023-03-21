class Foo 
  attr_reader :cents
  def initialize(cents)
    @cents = cents
  end

  def cents_to_coins(cents)
    hash = {25 => "quarter(s)", 
            10 => "dime(s)", 
            5 => "nickel(s)",
            1 => "penny" }

    output = ""

    output += "#{cents / 25 }" + " " + hash[25] + "," 
    cents = cents % 25
    
    output += " #{cents / 10 }" + " " + hash[10] + ","
    cents = cents % 10 

    output += " #{cents/ 5 }" + " " + hash[5] + " and"
    cents = cents % 5

    output += " #{cents/ 1 }" + " " + hash[1]
  end
end