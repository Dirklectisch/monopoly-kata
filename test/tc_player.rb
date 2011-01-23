require "unit_extensions"
require_relative "../lib/monopoly"

class TestPlayer < Test::Unit::TestCase
  
  must "Create a player" do
    anon_player = Player.new
    assert_instance_of(Player, anon_player)
  end
  
  must "New player begins at the starting position" do
    a_player = Player.new
    assert_equal(1, a_player.position)
  end
end