require "unit_extensions"
require_relative "../lib/monopoly.rb"

class TestBoard < Test::Unit::TestCase
  
  must "be able to tell at what position a player is" do
    player_one, player_two = Player.new
    game = Game.new(player_one, player_two)
    assert_equal(0, player_one.position)
  end
  
end