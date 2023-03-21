def spoonerize(words)
    first_w = words.split.first.split("") 
    first_l = first_w.first 

    second_w = words.split.last.split("") 
    second_l = second_w.first 

    a = first_w.join.sub(first_l, second_l)
    b = second_w.join.sub(second_l, first_l)

    return a + " " + b
end

p spoonerize("not picking") # => "pot nicking"
p spoonerize("wedding bells")
p spoonerize("gauri joshi")
p spoonerize("words radom")

