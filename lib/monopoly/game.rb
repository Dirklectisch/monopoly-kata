class Game
  # Game objects are responsible for managing game phases
  
  attr_reader :players, :dice, :round
  
  def initialize dice = Dice.new
    #raise ArgumentError, "Not enough players" if players.count < 2
    #raise ArgumentError, "Too many players" if players.count > 8
    #@players = players
    @dice = dice
    @round = nill
  end
  
  def dice= dice
    @dice = dice
  end
  
  def players= *players
    @players= players
  end
  
end