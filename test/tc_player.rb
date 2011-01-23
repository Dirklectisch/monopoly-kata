require "unit_extensions"
require_relative "../lib/monopoly"

class TestPlayer < Test::Unit::TestCase
  
  must "Be able to create new player" do
    a_player = Player.new
    assert_instance_of(Player, a_player)
  end
  
  must "New player begins at the starting position" do
    a_player = Player.new
    assert_equal(1, a_player.position)
  end
  
  must "Move on the board at the start of a turn" do
    a_player = Player.new
    a_player.take_turn
    assert_operator(a_player.position, :>, 0)
  end

  must "Move from last position over starting position" do
    a_player = Player.new; a_player.move(39);
    2.times do a_player.take_turn end
    assert_operator(a_player.position, :<, 12)  
  end
end