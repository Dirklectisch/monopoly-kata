require "unit_extensions"
require_relative "../lib/monopoly"

class TestBoard < Test::Unit::TestCase
  
  must "Create new game board" do
    a_board = Board.new
    assert_instance_of(Board, a_board)
  end

end