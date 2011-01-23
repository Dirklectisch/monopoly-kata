require "unit_extensions"
require_relative "../lib/monopoly.rb"

class TestGame < Test::Unit::TestCase

  must "be able to start a game with several players" do
    player_one, player_two, player_three = Player.new; 
    game = Game.instance; game.start(player_one, player_two, player_three);
    assert_equal(3, game.players.count)
  end
  
  must "not be able to start a game with less then two players" do
    only_player = Player.new; game = Game.instance;
    assert_raise( ArgumentError ) {game.start(only_player)}
  end
  
  #must "have a randomly determined play order at start of game" do
  #  player_one, player_two = Player.new;
  #  game = Game.instance; game.start(player_one, player_two, player_three);
  #end
  
end