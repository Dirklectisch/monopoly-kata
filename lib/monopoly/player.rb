class Player
  attr_reader :position

  def initialize
    @position = 0
  end
  
  def take_turn
    move(roll_dice)
  end
    
  #private  
  def position=(n)
    @position = n
  end
  
  def roll_dice
    1 + rand(6)
  end
  
  def move(n)
    self.position += n
  end
        
end

#a_player = Player.new
#putsa_player.take_turn