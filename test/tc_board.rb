require 'monopoly/board'
require 'minitest/autorun'

describe Board do
  
  it "creates a board from a preset of positions" do
    default_board = Board.create
    board_positions = default_board.positions
    board_positions.count.must_equal 40
  end
  
end