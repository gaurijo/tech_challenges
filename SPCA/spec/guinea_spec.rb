# Name, Description, Date Arrival 
# Come in a litter (objects should associate them with their siblings)

# require './lib/dog'
# require './lib/cat'
# require './lib/guinea'
# require 'pry'

# RSpec.describe "Guinea" do 
#   it "has a name, description, and arrival date" do 
    
#     buster = Guinea.new("Buster", "dwarf guinea pig", "01/01/2023")
#     biggy = Guinea.new("Biggy", "grey guinea pig", "01/01/2023")
#     bob = Guinea.new("Bob", "black guinea pig", "01/01/2023")
#     litter = Guinea::Litter.new([buster, biggy, bob])

#     expect(buster).to be_a(Guinea)
#     expect(buster.name).to eq("Buster")
#     expect(buster.description).to eq("dwarf guinea pig")
#     expect(buster.arrival).to eq("01/01/2023")
#     expect(litter.siblings.first).to eq(buster)
#     require 'pry'; binding.pry 
#     expect(litter.siblings.map {|sibling| sibling.name}).to eq(["Buster", "Biggy", "Bob"])
#   end
# end

