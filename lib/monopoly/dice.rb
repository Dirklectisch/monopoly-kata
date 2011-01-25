class Dice
  # A set of two six sided dice
  attr_reader :amount
  
  def initialize
    @amount = 2
  end

  def roll
    2 + rand(6)
  end
end