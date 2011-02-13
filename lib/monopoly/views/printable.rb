require 'mustache'

module Monopoly
  module Views
    
    module Printable
                          
      def print_properties
        return self.instance_variables
      end
      
    end
    
  end # views
end # Monopoly