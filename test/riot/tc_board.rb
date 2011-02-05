require 'riot'
require 'monopoly/board'
require 'monopoly/player'

context Board do
  setup { Board }
  asserts("it initializes a new board") {topic.new 'some_positions'}.kind_of?(Board)
  asserts("it creates a board with preset positions") {topic.create}.kind_of?(Board)
end

context "A board loaded with default positions preset" do
  helper(:a_player) { Player.new }
  setup { Board.create }
  asserts("a player can be placed on start position") {topic.place(:a_player).name == "Go"}
  context "and a player on start" do
    hookup { topic.place(:a_player) }
    asserts("it moves a player forward five places") {topic.move(:a_player, 5).to_i == 6}
  end
  context "and a player on last position" do
    hookup { topic.place(:a_player) }
    hookup { topic.move(:a_player, 39) }
    asserts ("it moves a player forward one place") {topic.move(:a_player, 1).to_i == 1}
    asserts ("it moves a player forward fourty places") {topic.move(:a_player, 40).to_i == 1}
  end
end
