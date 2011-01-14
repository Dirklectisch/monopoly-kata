require "unit_extensions"
require_relative "../lib/monopoly"

class TestPlayer < Test::Unit::TestCase
  
  must "Be able to create new player" do
    player = Player.new
  end
  
end