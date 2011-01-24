class Token
  attr_reader :position
  
  def initialize
    self.position = 0
  end
  
  def move i
    # Moves the player i places from the current position
    to = i + @position
    to > 40 ? @position = to % 40 : @position = to
  end
  
  def owner= player
    @owner = player
  end
  
  def position= i
    # Sets the tokens current position to i
    raise ArgumentError, "Position #{i} doesn't exist" if i > 40
    @position = i
  end  
end

class Pawn
  attr_reader :position
  
  def initialize board
    @board = board
    @position = nil
  end
  
  def move distance # Moves the pawn n positions
    destination = @board.destination @position, distance
  end
  
  def position= position
    
  end
end
