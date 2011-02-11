require 'monopoly/models/game'
require 'monopoly/models/dice'
require 'teststrap'

context Player do
  setup { Player }
  asserts("Initializes a new player") { topic.new "The Player" }.kind_of(Player)

  # Need to mock the Dice to properly test this
  context "A Player" do
    setup { topic.new "The Player" }
    helper(:dice) { Dice.new }
    asserts("rolls the dice") { topic.roll_dice(dice) > 0 }
  end
  
end

