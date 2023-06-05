require './lib/bob'
require 'pry'

RSpec.describe Bob do 
  it 'exists' do 
    @bob = Bob.new

    expect(@bob).to be_a(Bob)
  end

  it 'can state something' do 
    @bob = Bob.new 
    remark = "Tom-ay-to"

    expect(@bob.hey(remark)).to eq("Whatever.")
  end

  it 'can respond to a SHOUTING STATEMENT!' do 
    @bob = Bob.new 
    remark = "WATCH OUT!"

    expect(@bob.hey(remark)).to eq("Whoa, chill out!")
  end

  it 'can respond to shouting gibberish' do 
    @bob = Bob.new 
    remark = "FCAEADSF"

    expect(@bob.hey(remark)).to eq("Whoa, chill out!")
  end

  it 'can respond to a question' do 
    @bob = Bob.new 
    remark = "Are you okay?"

    expect(@bob.hey(remark)).to eq("Sure.")

    remark2 = "You are, what, like 15?"

    expect(@bob.hey(remark2)).to eq("Sure.")

    remark3 = "ffbbasdfrsad?"

    expect(@bob.hey(remark3)).to eq("Sure.")
  end

  it 'can respond to forcefully talking' do 
    @bob = Bob.new 
    remark = "Hi there!"

    expect(@bob.hey(remark)).to eq("Whatever.")
  end

  it 'can respond to a forceful question' do 
    @bob = Bob.new
    remark = "WHAT'S GOING ON?"

    expect(@bob.hey(remark)).to eq("Calm down, I know what I'm doing!")
  end

  it 'can recognize a question by checking if a statement ends in a question mark' do 
    @bob = Bob.new 
    remark = "Ending with ? means a question."

    expect(@bob.hey(remark)).to eq("Whatever.")
  end

  it 'can respond to silence' do 
    @bob = Bob.new 
    remark = ""

    expect(@bob.hey(remark)).to eq("Fine. Be that way!")
  end
end