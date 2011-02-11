require 'monopoly/models/player'

class Game
  attr_reader :players

  def initialize *players
    raise ArgumentError, "Not enough players" if players.count < 2
    raise ArgumentError, "Too many players" if players.count > 8
    self.players = players
  end # Intialize a new game

  private

  def players= *players
    players.flatten!.shuffle!
    @players = players
  end # Define game players

end