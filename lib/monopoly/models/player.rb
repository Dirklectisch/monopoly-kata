require 'monopoly/models/board'

class Player
  attr_reader :name, :position

  def initialize name = 'anonymous'
    @name = name
  end

  def position
    @position
  end

  def position= new_position
    @position = new_position
  end

  def roll_dice dice
    dice.roll
  end

  def to_s
    self.name
  end

end
