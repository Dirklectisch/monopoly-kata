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
     
     def render_context
       base.print_properties
     end
     
     def render data = template
       super template, render_context
     end
    
    end # ObjectView
    
  end # views
end # Monopoly