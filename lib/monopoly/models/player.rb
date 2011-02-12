require 'monopoly/models/board'

module Monopoly
  module Models
    
    class Player
      
      def Player.batch_create blueprints
        blueprints.map { |props| Player.new(*props) }
      end # Returns array of new positions
      
      attr_reader :name, :position

      def initialize name = 'anonymous'
        @name = name
      end

      def position
        @position
      end

      def position= new_position
        @position = new_position
      end

      def roll_dice dice
        dice.roll
      end

      def to_s
        self.name
      end
    end
    
  end # Models
end # Monopoly