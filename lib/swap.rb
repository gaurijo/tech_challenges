# Write a program that swaps two numbers
# You CANNOT use a temp. 3rd variable 
class Swap
  attr_accessor :x, :y
  def initialize(x, y)
    @x = x 
    @y = y
  end

  def swapped
    puts "#{@y},#{@x}"
  end
end

