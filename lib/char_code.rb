def calc(s)
  total1 = s.split("").map(&:ord).join.to_i
  new = total1.to_s
  newww = new.gsub("7", "1")
  newww = newww.to_i 
  total1.digits.sum - newww.digits.sum
end


p calc("aaaaaddddr")