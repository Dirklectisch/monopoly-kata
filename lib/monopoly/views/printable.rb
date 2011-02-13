require 'mustache'

module Monopoly
  module Views
    
    module Printable
                          
      def print_properties
        self.instance_variables.map { |var| var[1..-1].to_sym }        
      end
      
    end
    
  end # views
end # Monopoly