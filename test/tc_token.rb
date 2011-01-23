require "unit_extensions"
require_relative "../lib/monopoly"

class TestPlayer < Test::Unit::TestCase
  
  must "Create new token" do
    a_token = Token.new
    assert_instance_of(Token, a_token)
  end
  
  must "New tokens begins at the starting position" do
    a_token = Token.new
    assert_equal(1, a_token.position)
  end
  
  must "Move relative of current position" do
    a_token = Token.new
    a_token.move(39); assert_equal(40, a_token.position);
    a_token.move(2); assert_equal(2, a_token.position);
  end
end