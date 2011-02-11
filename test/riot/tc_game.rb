require 'monopoly/models/game'
require 'teststrap'

context Game do
  setup { Game }
  asserts("it intializes a new game") { topic.new('player_one', 'player_two') }.is_a?(Game)
  asserts("intializing a single player game") { topic.new('only_player') }.raises (ArgumentError)   
  asserts("intializing a nine player game") do
    topic.new('one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine')
  end.raises (ArgumentError)
  asserts("In a hunderd two player games, the number of play orders that occurs") do  
    play_order = []
    100.times do
      a_game = Game.new 'Horse', 'Car'
      play_order << a_game.players.to_s
    end
    play_order.uniq.count
  end.equals 2
end