require 'riot'
require 'monopoly/position'  

context Position do
  
  context "creates position object called 'left'" do
    setup { Position.new "left"}
    asserts("name") {topic.name}.equals("left")     
  end
  
  context "creates position objects from hash" do
    setup do
      hash = {'key_one' => 'name_one',
              'key_two' => 'name_two'}
      Position.batch_create hash
    end
    asserts_topic.size(2)
    asserts("second value in hash") {topic['key_two']}.kind_of(Position)
  end
  
end

  
  