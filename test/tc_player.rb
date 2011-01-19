require "unit_extensions"
require_relative "../lib/monopoly"

class TestPlayer < Test::Unit::TestCase
  
  must "Be able to create new player" do
    a_player = Player.new
    assert_instance_of(Player, a_player)
  end
  
  must "New player begin at the start position" do
    a_player = Player.new
    assert_equal(0, a_player.position)
  end
  
end