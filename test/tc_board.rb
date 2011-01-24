require "unit_extensions"
require_relative "../lib/monopoly"

class TestBoard < Test::Unit::TestCase
  
  must "Create new game board" do
    a_board = Board.new
    assert_instance_of Board, a_board
  end

  must "Tell relative destination position" do
    a_board = Board.new; curr = 1;
    # Test Case 1
    curr = a_board.destination curr, 4;
    assert_equal 5, curr;
    # Test Case 2
    curr = a_board.destination curr, 34;
    assert_equal 39, curr;
    # Test Case 3
    curr = a_board.destination curr, 8;
    assert_equal 7, curr;
  end
  
  must "Must return starting position" do
    a_board = Board.new
    assert_equal 1, a_board.start
  end
  
end