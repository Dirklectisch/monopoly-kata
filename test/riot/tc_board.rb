require 'riot'
require 'monopoly/board'

context Board do
  
  context "using the default UK positions" do
    setup { Board.create }
    asserts(:positions).size(40)
    asserts("name of second position") {topic.positions[2].name}.equals("Old Kent Road")
  end
  
end
