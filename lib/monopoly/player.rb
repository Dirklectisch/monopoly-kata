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
  
  # Basic movenment on the board
  # private
    
  def position= n
    # Sets the players current position to n
    raise ArgumentError, "Position #{n} doesn't exist" if n > 20
    @position = n
  end
  
  def move n
    # Moves the player n places from the current position
    self.position = (n + self.position) % 20
  end
  
end