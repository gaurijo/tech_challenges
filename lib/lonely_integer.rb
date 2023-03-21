# given an array of integers where all elements occur twice EXCEPT one element, find the one element that only occurs once (unique)
def lonely_integer(a)
  p a.select{|i| a.count(i) == 1}.join.to_i

  # iterate over array to select the integers where the count of that integer equals 1 (it only occurs once)
  # transform that to a string and then convert it to an integer
end

a = [1,1,2,3,3]

lonely_integer(a)