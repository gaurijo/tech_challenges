require './lib/leap_year'

RSpec.describe LeapYear do 
  before :each do 
    @leap_year = LeapYear.new(2015)
    @leap_year2 = LeapYear.new(2100)
  end

  it 'exists with attributes' do 
    expect(@leap_year).to be_a(LeapYear)
    expect(@leap_year.year).to eq(2015)
  end

  it 'returns false if not divisible by 4' do 
    expect(@leap_year.leap?).to eq(false)
  end

  it 'returns fasle if divisble by 4 but not by 100' do 
    expect(@leap_year2.leap?).to eq(false)
  end

  it 'returns true if divisible by 400' do 
    @leap_year = LeapYear.new(2000)

    expect(@leap_year.leap?).to eq(true)
  end
end