def pascal(num_rows)
  p = [[1]]
  (1...num_rows).each do |i|
    row = [1]
    require 'pry'; binding.pry 
    (1...i).each do |j|
      row << p[i-1][j-1] + p[i-1][j]
    end
  row << 1
  p << row
  end
  return p 
end

p pascal(5)
# until p.length == num_rows do 
#   las = p.map{|a| a.inject(:+)}
#   bruh = las.sum
#   require 'pry'; binding.pry 
#   pas << bruh
#   las << 1
#   p << las