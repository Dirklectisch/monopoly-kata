require 'monopoly/board'
require 'minitest/autorun'

describe Board do
  
  it "creates a board from a preset of positions" do
    preset_board = Board.load_preset
    board_positions = preset_board.positions()
    board_positions.count.must_be 40
  end
  
end