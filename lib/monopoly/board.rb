require 'monopoly/position'
require 'monopoly/presets'

class Board
  # Public constructor
  def Board.create
    Board.new Board.default_positions
  end # Creates a new default UK board
  
  def initialize positions
    @positions = positions
    @players = {}
  end # Creates a new board
  
  # Private class
  private
  
  def Board.default_positions
    Position.batch_create Presets.load('positions_uk.yml');
  end # Loads a preset of default position
  
  # Public instance
  public
   
  attr_reader :positions, :players
  
  def place player 
    position(1).place player
    players[player] = position(1)
  end # Player placed on starting position
  
  def move player, moves
    destination = relative(players[player], moves)
    players[player] = destination
  end # Player moved forward on the board
  
  # Private Instance
  private
  
  def position number
    index = number - 1
    if index > 40
      raise ArgumentError, "Requested position #{number} does not exist"
    elseif index < 1
      raise ArgumentError, "Requested position #{number} does not exist"
    else
      self.positions.at(index)
    end
  end # Returns the requested position
  
  def relative position, distance
    rel_dest = position.to_i + distance
    if rel_dest > 40 then
      abs_dest = rel_dest % 40
    else
      abs_dest = rel_dest
    end
    position(abs_dest)
  end # Returns position #distance away from #position
  
end

#def start_position
#  1
#end

#def destination current, distance
#  rel_dest = current + distance
#  if rel_dest > 40 then
#    dest = rel_dest % 40
#  else
#    dest = rel_dest
#  end
#end
