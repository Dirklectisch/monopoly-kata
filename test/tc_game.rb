require 'minitest/autorun'
require_relative '../lib/monopoly'

describe Game do
  
  it "Must set up a new two player game" do
    player_one, player_two = Player.new;
    two_player_game = Game.new player_one, player_two
    two_player_game.players.must_include player_one && player_two
  end
  
  it "Should not be possible to start a single player game" do
    only_player = Player.new
    assert_raises(ArgumentError){Game.new only_player}
  end
  
  it "Should not be possible to start a nine player game" do
    players = [];
    9.times do
      players << Player.new
    end
    assert_raises(ArgumentError){Game.new players}
  end

  it "should have a random play order" do
    play_order = []
    100.times do
      some_players = [Player.new("Horse"), Player.new("Car")]
      another_game = Game.new some_players
      play_order << another_game.players.to_s
    end
    play_order.uniq.count.must_equal 2
  end
  
end