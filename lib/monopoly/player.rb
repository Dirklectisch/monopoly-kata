require 'monopoly/board'

class Player
  attr_reader :name

  def initialize name = 'anonymous'
    @name = name
  end
  
  def to_s
    self.name
  end

end