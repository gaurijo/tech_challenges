GEESE = ["African", "Roman Tufted", "Toulouse", "Pilgrim", "Steinbacher"]
def goose_filter(birds)
  p good_birds = birds.filter_map{|b| b if !GEESE.include?(b)}
end

birds = ["Mallard", "Hook Bill", "African", "Crested", "Pilgrim", "Toulouse", "Blue Swedish"]
goose_filter(birds)
# Write a function that takes a list of strings as an argument and 
# returns a filtered list containing the same elements but with the 'geese' removed.

# The geese are any strings in the following array, which is pre-populated in your solution:

#   ["African", "Roman Tufted", "Toulouse", "Pilgrim", "Steinbacher"]
# For example, if this array were passed as an argument:

#  ["Mallard", "Hook Bill", "African", "Crested", "Pilgrim", "Toulouse", "Blue Swedish"]
# Your function would return the following array:

# ["Mallard", "Hook Bill", "Crested", "Blue Swedish"]