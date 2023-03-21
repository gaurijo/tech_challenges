# given an array, find how many positive nums, how many neg nums, how many zeros 
# return ratio of the above in float format with 6 decimal places
def plusminus(arr)
  pos = arr.select{|a| a > 0}.count
  neg = arr.select {|a| a < 0}.count
  zero = arr.select {|a| a == 0}.count

  pp = arr.count.to_f.to_i 
  
  puts '%.6f' % (pos.to_f / pp.to_f)
  puts '%.6f' % (neg.to_f / pp.to_f)
  puts '%.6f' % (zero.to_f / pp.to_f)
end

arr = [1, -2, 3, 0, -3]
plusminus(arr)