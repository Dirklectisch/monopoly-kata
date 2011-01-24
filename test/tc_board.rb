require "unit_extensions"
require_relative "../lib/monopoly"

class TestBoard < Test::Unit::TestCase
  
  must "Create new game board" do
    a_board = Board.new
    assert_instance_of Board, a_board
  end

  must "Tell relative destination position" do
    a_board = Board.new; current = 7;
    dest = a_board.destination current, 8;
    assert_equal 15, dest;
  end
  
  must "Must return starting position" do
    a_board = Board.new
    assert_equal 1, a_board.start
  end
  
end