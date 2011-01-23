require "unit_extensions"
require_relative "../lib/monopoly"

class TestToken < Test::Unit::TestCase
  
  must "Create new token" do
    a_token = Token.new
    assert_instance_of(Token, a_token)
  end
  
  must "New tokens begins at the starting position" do
    a_token = Token.new
    assert_equal(0, a_token.position)
  end
  
  must "Move relative of current position" do
    a_token = Token.new
    a_token.move(5); assert_equal(5, a_token.position);
    a_token.move(34); assert_equal(39, a_token.position);
    a_token.move(6); assert_equal(5, a_token.position);
  end
  
end