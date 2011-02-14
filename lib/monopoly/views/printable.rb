require 'mustache'

module Monopoly
  module Views
    
    module Printable
      
      def print_properties
        properties = {}
        self.instance_variables.each do |name|
          properties[name[1..-1].to_sym] = self.instance_variable_get(name)
        end
        properties
      end
      
    end
    
  end # views
end # Monopoly