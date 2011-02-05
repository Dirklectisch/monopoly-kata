require 'riot'
require 'monopoly/board'
require 'monopoly/player'

context Board do
  
  context "using the default UK positions" do
    setup { Board.create }
    asserts(:positions).size(40)
    asserts("name of second position") {topic.position(2).name}.equals("Old Kent Road")
    context "put a player on start position" do
      helper(:a_player) { Player.new }
      setup { topic.place(:a_player) }
      asserts("correct start position is found") { topic.name }.equals("Go")
      asserts("player is at start position") { topic.includes? :a_player}
    end
    context ", move a player five places forward." do
      helper(:a_player) { Player.new }
      hookup { topic.place(:a_player) }
      setup  { topic.move(:a_player, 5)}
      asserts("player position") {topic.to_i}.equals(6)
    end
  end
  
end
