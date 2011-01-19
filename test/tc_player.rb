require "unit_extensions"
require_relative "../lib/monopoly"

class TestPlayer < Test::Unit::TestCase
  
  must "Be able to create new player" do
    a_player = Player.new
    assert_instance_of(Player, a_player)
  end
  
  must "New player begins at the start position" do
    a_player = Player.new
    assert_equal(0, a_player.position)
  end
  
  must "Move araund the board at the start of a turn" do
    a_player = Player.new
    a_player.take_turn
    assert_equal(true, a_player.position > 0)
  end

end