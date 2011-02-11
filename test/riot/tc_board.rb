require 'monopoly/models/board'
require 'monopoly/models/player'
require 'teststrap'

include Monopoly::Models

context Board do
  setup { Board }
  asserts("it initializes a new board") {topic.new 'some_positions'}.kind_of?(Board)
  asserts("it creates a board with preset positions") {topic.create}.kind_of?(Board)
end

context "A board loaded with default positions preset" do
  helper(:a_player) { @a_player ||= Player.new }
  setup { Board.create }
  asserts("a player can be placed on start position") do
    topic.place(a_player)
    a_player.position == topic.positions.at(0)
  end
  asserts("a player can be moved forward 3 positions") do
    topic.move a_player, 3
    a_player.position == topic.positions.at(3)
  end
  asserts("a player can be moved forward 7 positions") do
    topic.move a_player, 7
    a_player.position == topic.positions.at(10)
  end
  asserts("a player can be moved forward between 1 and 6 positions") do
    current = topic.positions.index(a_player.position)
    moves = 1 + rand(6)
    topic.move a_player, moves
    a_player.position == topic.positions.at(current + moves)
  end
  asserts("a player can be moved forward to the start position") do
    current = topic.positions.index(a_player.position)
    distance_to_start = 40 - current
    topic.move a_player, distance_to_start
    a_player.position == topic.positions.at(0)
  end
  asserts("a player can be moved forward a complete round") do
    topic.move a_player, 40
    a_player.position == topic.positions.at(0)
  end
  asserts("a player can be moved between 40 and 80 positions") do
    distance = 40 + rand(40)
    topic.move a_player, distance
    a_player.position == topic.positions.at(distance - 40)
  end
  asserts("a player can be moved between 1 and 10 complete rounds") do
    current = topic.positions.index(a_player.position)
    a_player.position = topic.positions.at(1)
    rounds = 1 + rand(10)
    distance = rounds * 40
    topic.move a_player, distance
    a_player.position == topic.positions.at(1)
  end
  
  #context "and a player on start" do
  #  hookup { topic.place(:a_player) }
  #  asserts("it moves a player forward five places") {topic.move(:a_player, 5).to_i == 6}
  #end
end
