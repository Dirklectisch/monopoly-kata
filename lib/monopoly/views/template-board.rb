require 'mustache'
require 'monopoly/models'

module Monopoly
  module Views
    
    class Board
      include Printable
    end
    
    class TemplateBoard
      
      def initialize board
        @board = board
      end
          
    end
    
  end # views
end # Monopoly