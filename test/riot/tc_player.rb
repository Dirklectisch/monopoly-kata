require 'monopoly/game'
require 'teststrap'

context Player do
  setup { Player }
  asserts("Initializes a new player") { topic.new "The Player" }.kind_of(Player)

end