require 'pry'
require './lib/foo'

# take in integer (represents cents)
# turn that into number of quarters/nickels/dimes/pennies
RSpec.describe Foo do 
  it "exists and has attributes" do 
    foo = Foo.new(75)

  expect(foo).to be_a(Foo)
  expect(foo.cents).to eq(75)
  end

  it "returns string value of coins" do 
    foo = Foo.new(25)
    foo = foo.cents_to_coins(25)

  expect(foo).to eq("1 quarter(s), 0 dime(s), 0 nickel(s) and 0 penny")

    foo = Foo.new(25)
    foo = foo.cents_to_coins(180)

  expect(foo).to eq("7 quarter(s), 0 dime(s), 1 nickel(s) and 0 penny")
  end
end