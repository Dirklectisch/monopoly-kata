class Token
  attr_reader :owner, :position
  
  def initialize
    #@owner = player
    self.position = 1
  end
  
  def move i
    # Moves the player i places from the current position
    to = i + @position
    if to > 40
      to = to % 40
    end
    @position = to
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
  
#a_token = Token.new  
#puts a_token.move 39
#puts a_token.move 2