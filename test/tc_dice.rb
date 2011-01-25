require "unit_extensions"
require_relative "../lib/monopoly"

class TestDice < Test::Unit::TestCase
  
  must "Create pair of (six sided) dice" do
    two_dice = Dice.new
    assert_equal 2, two_dice.amount
  end
  
  must "Roll dice to get a value between two and twelve" do
    two_dice = Dice.new; value = two_dice.roll;
    assert_equal(value >= 2,true)
    assert_equal(value <= 12, true)
  end
  
  must "Dice rolls are random" do
    two_dice = Dice.new; eql = true; x, y = 1;
    12.times do
      y = two_dice.roll
      eql = false if x != y
      x = two_dice.roll
    end
    assert_equal(eql, false)
  end
end