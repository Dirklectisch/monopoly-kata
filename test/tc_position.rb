require 'minitest/autorun'
require_relative '../lib/monopoly'

describe Position do
  
  describe "when a new position is created" do
    it "should have a name" do
      a_position = Position.new "my name"
      a_position.name.must_equal "my name"
    end
  end
  
end