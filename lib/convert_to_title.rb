def convert_to_title(column_number)
  hash = {}
  ("A".."ZZZZ").each_with_index{|l, i| hash[i+1] = l}
  hash[column_number]
end

p convert_to_title(701)