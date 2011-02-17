require 'mustache'

module Monopoly
  module Views
    
    module Printable
      
      def print_properties depth = 2, object = self
              
        case
        when depth == 0
          return object.to_s
        when Printable.is_composite?(object) #!object.instance_variables.empty?
          return print_props_composite(depth, object)
        when object.kind_of?(Enumerable)
          object.map { |obj| print_properties(depth, obj) }
        when !Printable.is_composite?(object) #object.instance_variables.empty?
          return object.to_s
        else
          raise ArgumentError, "Object is not printable"
        end
        
      end
      
      def print_props_composite depth, object
        properties = {}  
        object.instance_variables.each do |name|
          prop_value = print_properties(depth - 1, object.instance_variable_get(name))
          prop_name = name[1..-1].to_sym
          properties[prop_name] = prop_value
        end
        properties
      end
          
      def self.is_composite? object = self
        !object.instance_variables.empty?
      end
      
      def add_property name, object #TODO auto add/remove @ in name
        name.to_sym
        self.instance_variable_set name, object
      end
      
    end
    
  end # views
end # Monopoly