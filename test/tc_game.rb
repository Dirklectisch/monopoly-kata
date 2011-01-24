require "unit_extensions"
require_relative "../lib/monopoly.rb"

class TestGame < Test::Unit::TestCase

  must "Start a game with several players" do
    player_one, player_two, player_three = Player.new; 
    a_game = Game.new player_one, player_two, player_three
    assert_equal(3, a_game.players.count)
  end
  
  must "not be able to start a game with less then two players" do
    only_player = Player.new; game = Game.new only_player;
    assert_raise( ArgumentError ) {game.start}
  end
  
  #must "have a randomly determined play order at start of game" do
  #  player_one, player_two = Player.new;
  #  game = Game.instance; game.start(player_one, player_two, player_three);
  #end
  
end