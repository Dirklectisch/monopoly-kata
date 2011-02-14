require 'monopoly/views'

include Monopoly::Views

describe "A printable object" do
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
  
  it "prints the names and values of it's variables" do
    property_values = {varA: 'valA',
                       varB: 'valB'}
                       
    @a_object.print_properties.should.equal property_values    
  end
end

