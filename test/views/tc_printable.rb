require 'monopoly/views'

include Monopoly::Views

describe "A printable instance" do
  before do
    
    class ClassA
      include Printable
      def initialize
        @varA = 'valA'
        @varB = 'valB' 
      end
    end
    
    @a_object = ClassA.new
    
  end
  
  it "Must print the names of it's variables" do
    
    property_names = [:varA, :varB]    
    (property_names & @a_object.print_properties).should.equal property_names
      
  end
  
end

