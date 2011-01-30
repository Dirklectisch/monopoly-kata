require 'minitest/autorun'
require_relative '../lib/monopoly'

describe Position do
  
  describe "when asked to create a new position" do
    it "must have a name" do
      a_position = Position.new "my name"
      a_position.name.must_equal "my name"
    end
    #it "should load a position from preset" do
    #  a_preset.load
    #end
  end
  
  describe "when asked to save the position to a file" do
    it "must save to the specified file" do
      a_position = Position.new "my name"
      a_position.save '../data/a_position.yaml'
    end
  end
  
end