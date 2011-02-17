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
      
      def to_s
        "Instance of A"
      end
    end
  end
  
  it "prints the names and values of it's variables" do
    a_object = ClassA.new 'valA', 12
    
    property_values = {varA: 'valA',
                       varB: '12'}
                       
    a_object.print_properties.should.equal property_values

  end
  
  it "nests the properties of referenced objects" do
    a_object = ClassA.new 'valA', 12
    b_object = ClassA.new a_object, 'valB'
    
    property_values = {varA: {varA: 'valA',
                              varB: '12'},
                       varB: 'valB'}
                       
    b_object.print_properties.should.equal property_values
    
  end
  
  it "nests the properties of referenced objects until a given depth" do
    a_object = ClassA.new 'valA', 12
    b_object = ClassA.new a_object, 'valB'
    
    property_values = {varA: 'Instance of A',
                       varB: 'valB'}
                       
    b_object.print_properties(1).should.equal property_values
    
  end
  
  it "nests the properties of objects in collections" do
    enum = []
    enum << ClassA.new('enAvalA', 'enAvalB')
    enum << ClassA.new('enBvalA', 'enBvalB') 
    a_object = ClassA.new('valA', enum)
    
    property_values = {varA: 'valA',
                       varB: [{varA: 'enAvalA',
                               varB: 'enAvalB'},
                              {varA: 'enBvalA',
                               varB: 'enBvalB'}]}
                               
    a_object.print_properties.should.equal property_values
    
  end
  
  it "sets new properties on the object which it extends" do
    
    a_object = ClassA.new 'valA', 12
    a_object.add_property :@varC, 'valC'
    
    property_values = {varA: 'valA',
                       varB: '12',
                       varC: 'valC' }
                       
    a_object.print_properties.should.equal property_values
    
  end
  
end

