require 'monopoly/position'
require 'monopoly/presets'

class Board
  
  def Board.create
    Board.new Board.default_positions
  end
  
  def Board.default_positions
    Position.batch_create Presets.load('positions_uk.yml');
  end
  
  attr_reader :positions
  
  def initialize positions
    @positions = positions
  end
  
  def place player
    positions[1].place player
    return positions[1]
  end
  
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
