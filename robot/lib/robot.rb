class Robot 
  attr_reader :moves, :turn_right, :turn_left, :forward, :turns
  def initialize
    @moves = 0
    @turns = 0
    @turn_right = false 
    @turn_left = false 
    @forward = false 
  end

  def forward 
    @forward == true 
    @moves += 1
  end

  def turn_right 
    @turn_right == true
    @turns += 1 
  end

  def turn_left 
    @turn_left == true 
    @turns += 1
  end


  def return_to_origin?(rules)
    if rules.length > 4 && (rules == 'GRGRGRG' || rules == 'GGRGGRGG') || 
      rules.length > 4 && (rules == 'GLGLGLG' || rules == 'GGLGGLGG')
      true 
    else
      false
    end
  end
end