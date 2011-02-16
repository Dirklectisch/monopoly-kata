require 'monopoly/models/board'
require 'monopoly/views/printable'
require 'mustache'

module Monopoly
  
  describe "A board template generator" do
 
   it "renders board position names" do
     
     a_board = Models::Board.create 'positions_test.yml'
     a_board.extend Views::Printable
     data = a_board.print_properties
     template = "{{#positions}} \n{{name}} \n{{/positions}}"     
     render = Mustache.render template, data
     
     render.should.equal "Go \nOld Kent Road \nCommunity Chest \nWhitechapel Road \n"
     
   end
 
  end

end

