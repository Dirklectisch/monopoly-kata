require 'minitest/autorun'
require_relative '../lib/monopoly/game'

describe Game do
  
  it "Should set up a new two player game" do
    player_one, player_two = Player.new
    two_player_game = Game.new player_one, player_two
    two_player_game.players.must_equal [player_one, player_two]
  end
  
end