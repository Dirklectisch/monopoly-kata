require 'singleton'

class Game
  include Singleton
  attr_reader :players, :round 
  
  def start *players
    raise ArgumentError, "Not enough players" if players.count < 2
    @players = players
    self.round = 1
  end
  
  private
  def round=(n)
    @round = n
  end
  
end