require "unit_extensions"
require_relative "../lib/monopoly"

class TestDice < Test::Unit::TestCase
  
  must "Create new set of six sided dice" do
    two_dice = Dice.new
    one_dice = Dice.new 1
    four_dice = Dice.new 4
    assert_instance_of Dice, two_dice
  end
  
  must "Return the range of possible outcomes for a roll" do
    two_dice = Dice.new 
    assert_equal 2..12, two_dice.range
    one_dice = Dice.new 1
    assert_equal 1..6, one_dice.range
    five_dice = Dice.new 5
    assert_equal 5..30, five_dice.range
  end
  
  must "Roll dice for a random number within it's range " do
    two_dice = Dice.new
    assert two_dice.range.include? two_dice.roll
    one_dice = Dice.new 1
    assert two_dice.range.include? two_dice.roll
    five_dice = Dice.new 5
    assert two_dice.range.include? two_dice.roll
  end
end