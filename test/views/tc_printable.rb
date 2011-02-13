require 'monopoly/views'

include Monopoly::Views

describe "A printable instance" do
  before do
    
    class ClassA
      include Printable
      def initialize
        @varAA = 'valAA'
        @varAB = 'valAB' 
      end
    end
    
    @a_object = ClassA.new
    
  end
  
  it "Must print the names of it's variables" do
    
    property_names = [:varAA, :varAB]    
    (property_names & @a_object.print_properties).should.equal property_names
      
  end
  
end

