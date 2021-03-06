require 'monopoly/models/player'

module Monopoly
  module Models

    class Game
      def Game.create *names
        new_players = Player.batch_create(names)
        self.new *new_players, Board.create
      end
      
      attr_reader :players, :board

      def initialize *players, board
        raise ArgumentError, "Not enough players" if players.count < 2
        raise ArgumentError, "Too many players" if players.count > 8
        self.players = players
        @board = board
      end # Intialize a new game

      private

      def players= *players
        players.flatten!.shuffle!
        @players = players
      end # Define game players

    end
    
  end # Models
end # Monopoly