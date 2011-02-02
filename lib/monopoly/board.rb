require 'YAML'
require 'monopoly/position'

class Board
  
  def Board.load_preset preset_file = 'board_positions_uk.yml'
    # Loads a preset of positions from disk
    
    # Define path where presets are stored
    preset_path = ENV['APP_ROOT'] + '/config/'
    
    # Load serialized positions from file
    preset_file = File.open(preset_path + preset_file)
    position_hash = YAML.load(preset_file)
    preset_file.close
  
    # Batch create positions 
    Position.create_batch(position_hash)
  end
  
  def Board.create positions = Board.load_preset
    Board.new positions
  end
  
  #Instance
  
  #attr_reader :positions
  
  def initialize board_positions
    @postions = board_positions
  end
  
  def positions
    @positions
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
