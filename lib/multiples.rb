def find_multiples(integer, limit)
    arr = (integer..limit).to_a
    frog = 1.upto(5).map {|i| integer * i}
    require 'pry'; binding.pry 
end
  #multiply the integer by a whole number 
  #whichever multiplications of whole numbers result in a remainder of 0 (modulo)
  #return those whole numbers in an array

find_multiples(5, 25)

# def display_multples(multiples_of, count)
#   (multiples_of .. count).each do |i|
#     if i % multiples_of == 0
#       puts i
#     end
#   end
# end

# def multiples(n, count)
#     1.upto(count).map {|i| n * i}
# end
