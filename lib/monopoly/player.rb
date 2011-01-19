class Player
  attr_reader :position

  def initialize
    @position= 0
  end
    
  private
  def position=(n)
    @position = n
  end

end
