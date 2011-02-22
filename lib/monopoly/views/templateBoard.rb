require 'mustache'
require 'monopoly/views/printable.rb'

module Monopoly
  module Views
      
    class ObjectView  
     attr_reader :base
     attr_accessor :data, :template
       
     def initialize base_object
       @base = base_object
       @base.extend Views::Printable
     end
     
     def render_data depth = 2
       self.data = base.print_properties depth
     end
     
     def render
       Mustache.render template, self.data ||= render_data
     end  
    end
    
  end # views
end # Monopoly