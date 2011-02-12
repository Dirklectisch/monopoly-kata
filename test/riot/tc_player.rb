require 'monopoly/models/player'
require 'monopoly/models/dice'
require 'teststrap'

include Monopoly::Models

context Player do
  setup { Player }
  asserts("Initializes a new player") { topic.new "The Player" }.kind_of(Player)
  asserts("creates a batch of players") do
    some_players = topic.batch_create ["One", "Two"]
    some_players.at(1).is_a? Player
  end
  
  # Need to mock the Dice to properly test this
  context "A Player" do
    setup { topic.new "The Player" }
    helper(:dice) { Dice.new }
    asserts("rolls the dice") { topic.roll_dice(dice) > 0 }
  end
  
end

