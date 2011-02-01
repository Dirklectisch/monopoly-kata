require 'YAML'
require_relative './position'

class Board
  
  def Board.load_preset
    # Load serialized positions from file
    preset_file = File.open('board_positions_uk.yml')
    position_hash = YAML.load(preset_file)
    preset_file.close
  
    # Batch create positions 
    positions = Position.create_batch(position_hash)
    return Board.new positions
  end
  
  attr_reader :positions
  
  def initialize positions
    @postions = positions
  end
  
  #def start
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
  
  #alias :dest :destination
  
end
