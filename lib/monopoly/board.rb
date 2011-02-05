require 'monopoly/position'
require 'monopoly/presets'

class Board
  
  def Board.create
    Board.new Board.default_positions
  end
  
  def Board.default_positions
    Position.batch_create Presets.load('positions_uk.yml');
  end
  
  attr_reader :positions, :players
  
  def initialize positions
    @positions = positions
    @players = {}
  end
  
  def place player
    position(1).place player
    players[player] = position(1)
  end
  
  def move player, moves
    destination = relative(players[player], moves)
    players[player] = destination
  end # Player moved forward on the board
  
  # Private
  
  def position number
    number -= 1
    self.positions.at(number)  
  end # Returns the requested position
  
  def relative position, distance
    position(position.to_i + distance)
  end # Returns position #distance away form #position
  
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
