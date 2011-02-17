require 'mustache'
require 'monopoly/views/printable.rb'

module Monopoly
  module Views
      
    class TemplateBoard
       attr_reader :board, :template
       
       def initialize board
         @board = board
         @board.extend Views::Printable
         @template = "{{#positions}} \n{{name}} \n{{/positions}}" #should move elsewhere
       end
      
      def add_index_positions #TODO make it work on all enumerables
        board.positions.each_index do |idx|
          pos = board.positions[idx]
          pos.extend Printable
          pos.add_property :@number, idx + 1        
        end
        board.positions
      end
      
      def render
        data = @board.print_properties
        Mustache.render @template, data
      end
      
      def template= new_template
        @template = new_template
      end
      
     end
    
  end # views
end # Monopoly