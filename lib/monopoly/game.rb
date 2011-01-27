require 'monopoly/player'

class Game
  
  def initialize *players
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