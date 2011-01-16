class Game
  attr_reader :players
  
  def initialize *players
    raise ArgumentError, "Not enough players" if players.count < 2
    @players = *players
  end

end