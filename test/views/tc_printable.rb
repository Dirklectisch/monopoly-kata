require 'monopoly/views'

include Monopoly::Views

describe "A printable object" do
  before do
    class ClassA
      include Printable
      
      def initialize valA, valB
        @varA = valA
        @varB = valB
      end
    end
  end
  
  it "prints the names and values of it's variables" do
    a_object = ClassA.new 'valA', 12
    
    property_values = {varA: 'valA',
                       varB: 12}
                       
    a_object.print_properties.should.equal property_values
  end
  
  it "nests the properties of referenced objects" do
    a_object = ClassA.new 'valA', 12
    b_object = ClassA.new a_object, 'valB'
    
    property_values = {varA: {varA: 'valA',
                              varB: 12},
                       varB: 'valB'}
                       
    b_object.print_properties.should.equal property_values
    
  end
  
  #it "nests the properties of objects in collections" do
  #  enum = []
  #  enum << ClassA.new('enAvalA', 'enAvalB')
  #  enum << ClassA.new('enBvalA', 'enBvalB') 
  #  a_object = ClassA.new('valA', enum)
  #  
  #  property_values = {varA: 'valA',
  #                     varB: [{varA: 'enAvalA',
  #                             varB: 'enAvalB'},
  #                            {varA: 'enBvalA',
  #                             varB: 'enBvalB'}]}
  #                             
  #  a_object.print_properties.should.equal property_values
  #  
  #end
end
