require 'monopoly/game'
require 'riot'

context Game do
  setup { Game }
  asserts("it intializes a new game") { topic.new('player_one', 'player_two') }.is_a?(Game)
  asserts("intializing a single player game") { topic.new('only_player') }.raises (ArgumentError)   
  #asserts("intializing a nine player game") { topic.new('one', 'two', 'three', 'four', 'five',) }.raises (ArgumentError)   
end