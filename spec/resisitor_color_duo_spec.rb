require 'pry'
require './lib/resistor_color_duo'

RSpec.describe ResistorColorDuo do 
  it "exists with attributes" do 

    data = { "Black" => 0, "Brown" => 1, 
            "Red" => 2, "Orange" => 3, 
            "Yellow" => 4, "Green" => 5, 
            "Blue" => 6, "Violet" => 7, 
            "Grey" => 8, "White" => 9 }

    rcd = ResistorColorDuo.new(data)

    expect(rcd).to be_a(ResistorColorDuo)
    expect(rcd.data["Blue"]).to eq(6)
    expect(rcd.data["Grey"]).to eq(8)
  end
  
  it "converts a color pair into combined value" do 

    data = { "Black" => 0, "Brown" => 1, 
            "Red" => 2, "Orange" => 3, 
            "Yellow" => 4, "Green" => 5, 
            "Blue" => 6, "Violet" => 7, 
            "Grey" => 8, "White" => 9 }

    rcd = ResistorColorDuo.new(data)

    expect(rcd.value("Blue Grey")).to eq(68)
  end 

  #sad path test
  it "if more than two colors are passed it ignores everything except the first two colors" do 

    data = { "Black" => 0, "Brown" => 1, 
            "Red" => 2, "Orange" => 3, 
            "Yellow" => 4, "Green" => 5, 
            "Blue" => 6, "Violet" => 7, 
            "Grey" => 8, "White" => 9 }

    rcd = ResistorColorDuo.new(data)

    expect(rcd.value("Blue Grey Green")).to eq(68)
  end
end