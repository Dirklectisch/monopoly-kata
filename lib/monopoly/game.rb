class Game
  attr_reader :players, :round
  
  def initial *players
    raise ArgumentError, "Not enough players" if players.count < 2
    raise ArgumentError, "Too many players" if players.count > 8
    @players = players
    round = 1
  end
  
  private
  def round=(n)
    @round = n
  end
  
end