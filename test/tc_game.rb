require "unit_extensions"
require_relative "../lib/monopoly.rb"

class TestGame < Test::Unit::TestCase

  must "Be able to start a new game with several players" do
    player_one, player_two, player_three = Player.new; 
    game = Game.new(player_one, player_two, player_three)
    assert_equal(3, game.players.count)
  end
  
  must "Not be able to start a game with less then two players" do
    only_player = Player.new
    assert_raise( RuntimeError ) {game = Game.new(only_player)}
  end

end