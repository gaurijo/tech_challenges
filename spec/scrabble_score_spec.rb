require './lib/scrabble_score'

RSpec.describe ScrabbleScore do 
  it 'exists with attributes' do 
    scrabble_score = ScrabbleScore.new("a")

    expect(scrabble_score).to be_a(ScrabbleScore)
    expect(scrabble_score.word).to eq("a")
  end

  it 'has a value system as a Hash' do 
    scrabble_score = ScrabbleScore.new("cabbage")

    expect(scrabble_score.score).to eq(14)
    
  end
end