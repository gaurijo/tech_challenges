class ScrabbleScore
  attr_reader :word
  def initialize(word)
    @word = word
  end

  def score 
    # for w in word 
    if word.upcase.match((/[AEIOULNRST]/))
      word.upcase.scan(/[AEIOULNRST]/).count 
    end
    # if word.upcase.match(/[AEIOULNRST]/) #This only finds a match but we want tally up the value of each letter's occurence. 
    #   return 1
    # elsif word.upcase.match(/[DG]/)
    #   return 2 
    # elsif word.upcase.match(/[BCMP]/)
    #   return 3
    # elsif word.upcase.match(/[FHVWY]/)
    #   return 4 
    # elsif word.upcase.match(/[K]/)
    #   return 5 
    # elsif word.upcase.match(/[JX]/)
    #   return 8 
    # elsif word.upcase.match(/[QZ]/)
    #   return 10 
    # else 
    #   return 'error'
    # end
  end
end