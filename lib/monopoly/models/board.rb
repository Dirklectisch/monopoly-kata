require 'monopoly/models/position'
require 'monopoly/models/presets'

module Monopoly
  module Models
    
    class Board
      # Public constructor
      def Board.create
        Board.new Board.default_positions
      end # Creates a new default UK board

      def initialize positions
        @positions = positions
        @players = {}
      end # Creates a new board

      # Private class
      private

      def Board.default_positions
        Position.batch_create Presets.load('positions_uk.yml');
      end # Loads a preset of default position

      public # instance

      attr_reader :positions

      def place player 
        player.position = positions.at(0)
      end # Player placed on starting position

      def move player, moves
        current = positions.index(player.position)
        normalized_distance = moves % 40
        destination = current + normalized_distance
        reversed_destination = destination - 40
        player.position = positions.at(reversed_destination)
      end # Player moved forward on the board

      def relative position, distance
      end # Returns position #distance away from #position

    end
  end # Models
end # Monopoly