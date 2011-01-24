class Pawn
  attr_reader :position
  
  def initialize board
    @board = board
    @position = board.start
  end
  
  def move distance # Moves the pawn i positions
    @position = @board.destination @position, distance
  end
  
  def position= new_pos
    @position = new_pos
  end
end
