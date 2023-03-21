# class Guinea
#   attr_reader :name, :description, :arrival, :litter 
#   def initialize(name, description, arrival)
#     @name = name 
#     @description = description
#     @arrival = arrival 
#     @litter = litter
#   end

#   class Litter 
#     attr_reader :siblings 

#     def initialize(siblings)
#       @siblings = siblings
#     end
#   end
# end


# buster = Guinea.new("Buster", "dwarf guinea pig", "01/01/2023")
# biggy = Guinea.new("Biggy", "grey guinea pig", "01/01/2023")
# bob = Guinea.new("Bob", "black guinea pig", "01/01/2023")
# litter = Guinea::Litter.new([buster, biggy, bob])
