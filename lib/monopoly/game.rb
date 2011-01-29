require 'monopoly/player'

class Game
  
  def initialize *players
    players.flatten!
    raise ArgumentError, "Not enough players" if players.count < 2
    raise ArgumentError, "Too many players" if players.count > 2
    @players = players
  end
  
  def players
    @players
  end
  
  private
  
  def players= *players
    @players = players
  end
  
end