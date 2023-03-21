# Name, Description, Date Arrival 
# Save and Display Favorite food 
# Stores whether or not likes Dogs 

# require './lib/dog'
# require './lib/cat'
# require 'pry'

# RSpec.describe "Cat" do 
#   it "has a name, description, and arrival date" do 
#     luna = Cat.new("Luna", "Orange", "01/01/2023")

#     expect(luna).to be_a(Cat)
#     expect(luna.name).to eq("Luna")
#     expect(luna.description).to eq("Orange")
#     expect(luna.arrival).to eq("01/01/2023")
#   end

#   it "can display favorite foods and add new ones" do 
#     luna = Cat.new("Luna", "Orange", "01/01/2023")

#     expect(luna.favorite_foods).to eq([])

#     tuna = luna.add_food("tuna")
#     chicken = luna.add_food("chicken")
#     kibble = luna.add_food("kibble")

#     expect(luna.favorite_foods).to eq(["tuna", "chicken", "kibble"])
#   end

#   it "can store whether or not it likes dogs" do 
#     luna = Cat.new("Luna", "Orange", "01/01/2023")

#     expect(luna.likes_dogs?).to eq(false)
#   end
# end