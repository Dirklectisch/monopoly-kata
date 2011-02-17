module Monopoly
  module Models
    
    class Position
      # Factory
      def Position.batch_create blueprints
        blueprints.map { |props| Position.new(*props) }
      end # Returns array of new positions

      # Instance 
      attr_reader :name

      def initialize numb = nil, name
        @name = name
      end
      
      def to_s
        return name
      end

      def place player
        # Apply effects on placed player here
        return self
      end

    end
    
  end # Models
end # Monopoly