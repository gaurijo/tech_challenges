def divisors(n)
  # pseudo: 
  # for range of numbers between 1 and n convert to array of numbers 
  # iterate through each number to see if that number can be evenly divided by n 
  # take the total count of the instances where that's true 
  i = 1
  (i..n).to_a.select {|i| n % i == 0}.count 
end

p divisors(4)
p divisors(30)

# Count the number of divisors of a positive integer 