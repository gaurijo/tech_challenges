require './lib/boutique'
require 'pry'

RSpec.describe Boutique do 
  before :each do 
    @items = [ {price: 65.00, name: "Maxi Brown Dress", quantity_by_size: {s: 3, m: 7, l: 8, xl: 4}},
              {price: 50.00, name: "Red Short Skirt", quantity_by_size: {}},
              {price: 29.99, name: "Black Short Skirt", quantity_by_size: {s: 1, xl: 4}},
              {price: 20.00, name: "Bamboo Socks Cats", quantity_by_size: {s: 7, m: 2}}
            ]
    @bou = Boutique.new(@items)
  end 

  it "exists and has attributes" do 
    expect(@bou).to be_a(Boutique)
    expect(@bou.items).to be_a(Array)
    expect(@bou.items.first).to be_a(Hash)
  end

  it "returns item names in alphabetical order" do 
    expect(@bou.item_names).to eq(["Bamboo Socks Cats", "Black Short Skirt", "Maxi Brown Dress", "Red Short Skirt"])
  end

  it "returns an empty array if there are no items" do 
    @items = []
    @bou = Boutique.new(@items)
    expect(@bou.item_names).to eq([])
  end

  it "returns cheap items (items priced less than $30)" do 
    expect(@bou.cheap).to eq([{:name=>"Black Short Skirt", :price=>29.99, :quantity_by_size=>{:s=>1, :xl=>4}}, {:name=>"Bamboo Socks Cats", :price=>20.0, :quantity_by_size=>{:m=>2, :s=>7}}])
  end

  it "returns out of stock items (if no items are out it returns all items)" do 
    expect(@bou.out_of_stock).to eq([{:name=>"Red Short Skirt", :price=>50.0, :quantity_by_size=>{}}])
  end

  it "returns the sizes in stock for a particular item" do 
    expect(@bou.stock_for_item("Bamboo Socks Cats")).to eq({:m=>2, :s=>7})
  end

  it "returns the total stock of all items" do 
    expect(@bou.total_stock).to eq(36)
  end
end