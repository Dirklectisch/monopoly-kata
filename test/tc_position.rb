require 'minitest/autorun'
require 'monopoly/position'

describe Position do
  
  describe "when asked to create a new position" do
    it "must have a name" do
      a_position = Position.new "my name"
      a_position.name.must_equal "my name"
    end
  end
  
end