require "unit_extensions"
require_relative "../lib/monopoly"

class TestPawn < Test::Unit::TestCase
  
  must "Create new pawn" do
    a_board = Board.new; a_pawn = Pawn.new a_board;
    assert_instance_of(Pawn, a_pawn)
  end
  
  must "New pawns begins at the starting position" do
    a_board = Board.new; a_pawn = Pawn.new a_board;
    assert_equal(1, a_pawn.position)
  end
  
end