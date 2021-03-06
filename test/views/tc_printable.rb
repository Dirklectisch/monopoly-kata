require 'monopoly/views/printable'
require 'monopoly/models/board'

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
                       varB: [{index: 1,
                               varA: 'enAvalA',
                               varB: 'enAvalB'},
                              {index: 2,
                               varA: 'enBvalA',
                               varB: 'enBvalB'}]}
                               
    a_object.print_properties.should.equal property_values
    
  end
  
  it "Adds an index as an attribute to objects in a frozen array" do
    another_board = Monopoly::Models::Board.create
    another_board.positions.freeze
    another_board.extend Monopoly::Views::Printable
    another_board.statify_indexes
    
    another_board.positions[3].instance_variable_get(:@index).should.equal 4
    
  end
  
end

