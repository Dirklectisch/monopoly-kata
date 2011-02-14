require 'mustache'

module Monopoly
  module Views
    
    module Printable
      
      def print_properties object = self
        properties = {}
        object.instance_variables.each do |name|
          value = object.instance_variable_get(name)
          value = print_properties(value) if !value.instance_variables.empty?
          properties[name[1..-1].to_sym] = value
        end
        properties
      end
      
    end
    
  end # views
end # Monopoly