# Given a number, list the natural numbers below that number
# that are multiples of 3 or 5. Then get the sum of those multiples.
# Ex: num = 10 
# list of all natural numbers below 10 that are multiples of 3 or 5:
# [3, 5, 6, 9].sum => 23
# pseudo: 
# transform int into range of ints, with last int being num - 1
# 10 => [1,2,3,4,5,6,7,8,9]
# now take that array and if this is not true: num % 3 == 0 or num % 5 == 0
# drop the number from the array to only get the multiples of 3 or 5
# then sum the remaining numbers in the array to get the total
def multiples(num)
  num_range = (1..num - 1).to_a 
  good_nums = []
    for n in num_range do
      if n % 3 == 0
        good_nums << n 
      elsif n % 5 == 0 
        good_nums << n
      end
    end
  p good_nums.sum 
end

multiples(10)