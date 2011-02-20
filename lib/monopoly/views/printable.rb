require 'mustache'

module Monopoly
  module Views
    
    module Printable
      
      def print_properties depth = 2, object = self, key = {}
                        
        unless depth == 0

          return case
          when !object.instance_variables.empty? # composite object
            print_props_composite(depth, object, key)
          when object.kind_of?(Enumerable) # collection object
            print_props_collection(depth, object)  
          else # Maximum depth reached
            object.to_s
          end
          
        else # Maximum depth reached
          return object.to_s
        end
        
      end
      
      def print_props_composite depth, object, key = {}
        properties = key
        object.instance_variables.each do |name|
          prop_value = print_properties(depth - 1, object.instance_variable_get(name))
          prop_name = name[1..-1].to_sym
          properties[prop_name] = prop_value
        end
        properties
      end # Expands a composite object
      
      def print_props_collection depth, enumerable
        enumerable.each_with_index.collect do |object, idx|
          print_properties(depth, object, {index: idx + 1})
        end
      end # TODO: keys should be optional
      
      def statify_indexes
        
        self.instance_variables.each do |name|
          object = self.instance_variable_get(name)
          if object.kind_of?(Enumerable) and object.frozen? == true          
            object.each_with_index do |element, index|
              element.instance_variable_set(:@index, index + 1)
            end 
          end 
        end
        
      end
      
    end # Printable
  end # views
end # Monopoly