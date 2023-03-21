require 'pry'
require './lib/robot'

RSpec.describe Robot do 
  before :each do 
    @robot = Robot.new 
  end

  it 'exists' do 

  expect(@robot).to be_a(Robot)

  end

  it 'can move forward one step' do 

    expect(@robot.moves).to eq(0)

    @robot.forward
  
    expect(@robot.moves).to eq(1)
  end

  it 'can turn left; it can turn right' do 

    @robot.turn_left 
    @robot.turn_right

    expect(@robot.turns).to eq(2)
  end

  it 'can make many moves and turns' do 
    @robot.turn_left 
    @robot.turn_right
    @robot.turn_left 
    @robot.forward
    @robot.forward
    @robot.turn_right
    @robot.turn_left 
    @robot.turn_right
    @robot.forward

    expect(@robot.moves).to eq(3)
    expect(@robot.turns).to eq(6)
  end

  it 'knows if its returned to its origin space' do 

    expect(@robot.return_to_origin?('GRGL')).to eq(false)
    expect(@robot.return_to_origin?('GLGLGLG')).to eq(true)
    expect(@robot.return_to_origin?('GRGL')).to eq(false)
    expect(@robot.return_to_origin?('GRGRGRG')).to eq(true)
    expect(@robot.return_to_origin?('GR')).to eq(false)
    expect(@robot.return_to_origin?('GGRGGRGG')).to eq(true)
    expect(@robot.return_to_origin?('GGLGGLGG')).to eq(true)
  end
end