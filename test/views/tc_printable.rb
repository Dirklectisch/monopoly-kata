require 'monopoly/views'

include Monopoly::Views

describe "A printable object" do
  before do
    class ClassA
      include Printable
      def initialize
        @varA = 'valA'
        @varB = 12 
      end
    end
    
    @a_object = ClassA.new
  end
  
  it "prints the names and values of it's variables" do
    property_values = {varA: 'valA',
                       varB: 12}
                       
    @a_object.print_properties.should.equal property_values
  end
  
  
end

