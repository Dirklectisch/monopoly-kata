require 'riot'
require 'monopoly/position'  

context Position do
  
  context "creates instance named 'left'" do
    setup { Position.new "left"}
    asserts("name") {topic.name}.equals("left")     
    
    context "and places an object" do
      helper (:an_object) { Object.new }
      hookup { topic.place an_object }
      asserts("the amount of objects") {topic.objects}.size(1) 
    end
    
  end
  
  context "creates a batch of position objects from hash" do
    setup do
      hash = {'key_one' => 'name_one',
              'key_two' => 'name_two'}
      Position.batch_create hash
    end
    asserts("returns an Array") {topic.is_a?(Array)}
    asserts_topic.size(2)
    asserts("second value") {topic[1]}.kind_of(Position)
  end
  
end

  
  