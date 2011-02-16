require 'monopoly/models/board'
require 'monopoly/views/templateBoard'
require 'mustache'

module Monopoly
  
  describe "A board template generator" do
    
    before do
      @a_board = Models::Board.create 'positions_test.yml'
    end

 
    it "renders board position names" do          
    
      a_board_template = Views::TemplateBoard.new @a_board
      result_doc = "Go \nOld Kent Road \nCommunity Chest \nWhitechapel Road \n"
  
      a_board_template.render.should.equal result_doc
     
    end
  
     it "renders board position numbers" do
    
      board_template = Views::TemplateBoard.new @a_board
      board_template.template = "{{#positions}} \n{{number}}. \n{{name}} \n{{/positions}}"
    
    end
    
  end
end
