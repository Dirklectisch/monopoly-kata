require 'mustache'
require 'monopoly/views/printable.rb'

module Monopoly
  module Views
      
    class TemplateBoard
       def initialize board
         @board = board
         @board.extend Views::Printable
         @template = "{{#positions}} \n{{name}} \n{{/positions}}" #should move elsewhere
       end
      
      def template= new_template
        @template = new_template
      end
      
      def render
        data = @board.print_properties
        Mustache.render @template, data
      end
     end
    
  end # views
end # Monopoly