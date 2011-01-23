# Simple die roll method
def roll_dice
  1 + rand(6)
end

class Player
  attr_reader :name

  def initialize name = nil
    @name = name
  end
  
  def take_turn
    move(roll_dice)
  end
  
end