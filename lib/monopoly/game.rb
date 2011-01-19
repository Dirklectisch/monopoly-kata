require 'singleton'

class Game
  include Singleton
  attr_reader :players
  
  def start *players
    raise ArgumentError, "Not enough players" if players.count < 2
    @players = players
  end
  
end