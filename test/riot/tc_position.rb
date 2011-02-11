require 'monopoly/models/position'  
require 'teststrap'

context Position do
  setup{ Position }
  asserts("Intializes postion") { topic.new "left" }.kind_of(Position)
  
  context "creates a batch of position objects from hash" do
    setup do
      hash = { 1 => 'name_one',
               2 => 'name_two'}
      Position.batch_create hash
    end
    asserts("returns an Array") {topic.is_a?(Array)}
    asserts_topic.size(2)
    asserts("second value") {topic[1]}.kind_of(Position)
  end
  
end

  
  