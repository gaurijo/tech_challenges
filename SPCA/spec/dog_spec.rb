# Name, Description, Date Arrival 
# List of favorite dog friends 
# require './lib/dog'
# require 'pry'

# RSpec.describe "Dog" do 
#   it "has a name, description, and arrival date" do 
#     dog = Dog.new("Rex", "Golden Retriever", "01/01/2023")

#     expect(dog).to be_a(Dog)
#     expect(dog.name).to eq("Rex")
#     expect(dog.description).to eq("Golden Retriever")
#     expect(dog.arrival).to eq("01/01/2023")
#   end

#   it "has a list of favorite dog friends" do 
#     rex = Dog.new("Rex", "Golden Retriever", "01/01/2023")
#     spot = Dog.new("Spot", "Terrier Mix", "08/11/2022")
#     max = Dog.new("Max", "Bloodhound", "07/04/2019")
#     rosie = Dog.new("Rosie", "Pitbull", "09/15/2022")

#     rex.add_to_favorites(spot)
#     rex.add_to_favorites(max)
#     rex.add_to_favorites(rosie)
    
#     expect(rex.favorites).to eq([spot, max, rosie])
#   end
# end