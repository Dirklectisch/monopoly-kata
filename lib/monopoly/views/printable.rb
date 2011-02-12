require 'mustache'

module Monopoly
  module Views
    
    module Printable
                          
      def print_properties object = self
        names = object.instance_variables
        props = {}
        names.each do |name|
          value = object.instance_variable_get(name).to_s
          name = name.to_s.delete('@')
          props[name] = value
        end
        props
      end # Returns a hash of all instance variables
      
      def render template
        Mustache.render template, self.print_properties
                        
      end # Renders the objects properties according to #template
      
    end
    
    
    #class PlayerTest
    #  include Printable
    #  
    #  def initialize name, position
    #    @name = name
    #    @position = position
    #  end
    #             
    #end
    
    #player = PlayerTest.new "Speler", "Govert Flinck"
    
    #template = "Player {{name}} is on {{position}}"
    
    #puts Mustache.render template, player.print_properties
    
  end # views
end # Monopoly