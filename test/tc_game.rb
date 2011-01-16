require "unit_extensions"
require_relative "../lib/monopoly.rb"

class TestGame < Test::Unit::TestCase

  must "be able to start a game with several players" do
    player_one, player_two, player_three = Player.new; 
    game = Game.new(player_one, player_two, player_three)
    assert_equal(3, game.players.count)
  end
  
  must "not be able to start a game with less then two players" do
    only_player = Player.new
    assert_raise( ArgumentError ) {game = Game.new(only_player)}
  end

end