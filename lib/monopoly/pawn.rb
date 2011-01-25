class Pawn
  # Pawn factory
  
  def Pawn.create board = Board.new
    self.new board
  end

end

class Pawn
  attr_reader :position
  
  def initialize board = Board.new
    @board = board
    @position = board.start
  end
  
  def move distance # Moves pawn 'distance' on the board
    @position = @board.dest @position, distance
  end
  
 private 
  
  def position= new_pos
    @position = new_pos
  end
  
end
