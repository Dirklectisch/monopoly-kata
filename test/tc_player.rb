require "unit_extensions"
require_relative "../lib/monopoly"

class TestPlayer < Test::Unit::TestCase
  
  must "Create a player" do
    anon_player = Player.new
    assert_instance_of(Player, anon_player)
  end
  
  must "Indentify a named player" do
    a_player = Player.new "player_one"
    assert_equal("player_one", a_player.name)
  end
  
  must "Verify if it's the players turn" do
    player_one, player_two = Player.new
    
  end
end