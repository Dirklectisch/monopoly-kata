#require 'monopoly/player'

class Game
  
  def initialize *players
    players.flatten!
    raise ArgumentError, "Not enough players" if players.count < 2
    raise ArgumentError, "Too many players" if players.count > 2
    self.players = players
  end
  
  def players= *players
    players.flatten!.shuffle!
    @players = players
  end
  
  def players
    @players
  end
  
end

