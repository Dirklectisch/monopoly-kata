require "unit_extensions"
require_relative "../lib/monopoly"

class TestPlayer < Test::Unit::TestCase
  
  must "Create a player" do
    anon_player = Player.new
    assert_instance_of(Player, anon_player)
  end
  
  must "New players get a token" do
    a_player = Player.new  
  end
  
end