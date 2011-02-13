require 'monopoly/views'

include Monopoly::Views

describe "A printable instance" do
  before do
    
    class ClassA
      include Printable
      def initialize
        @varA = 'valA'
        @varA = 'valA' 
      end
    end
    
    @a_object = ClassA.new
    
  end
  
  it "Must print the names of it's properties" do
    
    property_names = @a_object.instance_variables
    @a_object.print_properties.should.equal property_names
    
  end
  
end

