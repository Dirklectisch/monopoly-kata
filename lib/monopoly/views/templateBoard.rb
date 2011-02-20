require 'mustache'
require 'monopoly/views/printable.rb'

module Monopoly
  module Views
      
    class ObjectView < Mustache       
     attr_reader :base, :template
       
     def initialize base_object
       @base = base_object
       @base.extend Views::Printable
     end
     
     def render_context depth = 2
       base.print_properties depth
     end
     
     def render data = template
       super template, render_context
     end  
    end
    
  end # views
end # Monopoly