require 'pry'
require './lib/receipt'

RSpec.describe Receipt do 
  before :each do 
      @menu_hash = {
        'veggie sandwich' => 6.85,
        'extra veggies' => 2.20,
        'chicken sandwich' => 7.85,
        'extra chicken' => 3.20,
        'cheese' => 1.25,
        'chips' => 1.40,
        'nachos' => 3.45,
        'soda' => 2.05,
    }
    @receipt = Receipt.new(@menu_hash, 3)

  end
  it "exists and has attributes" do 
    expect(@receipt).to be_a(Receipt)
    expect(@receipt.menu).to eq(@menu_hash)
    expect(@receipt.items).to eq(3)
  end
end