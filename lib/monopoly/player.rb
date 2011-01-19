# Simple die roll method
def roll_dice
  1 + rand(6)
end

class Player
  attr_reader :position

  def initialize
    @position = 0
  end
  
  def take_turn
    move(roll_dice)
  end
  
  # Basic movenment
  # private
    
  def position=(n)
    @position = n
  end
  
  def move(n)
    self.position += n
  end        
end