require 'monopoly/models/board'
require 'monopoly/views/templateBoard'
require 'mustache'

module Monopoly
  
  describe "A board template generator" do
    
    before do
      @a_board = Models::Board.create 'positions_test.yml'
      
      #pl1, pl2 = Player.new "player one", "player_two"
      #@a_board.place pl1
      #@a_board.place pl2
      
      #game.players.each do |player|
      #  
      #end
      
    end

 
    it "renders board position names" do             
      a_board_template = Views::TemplateBoard.new @a_board
      result_doc = "Go \nOld Kent Road \nCommunity Chest \nWhitechapel Road \n"
  
      a_board_template.render.should.equal result_doc
     
    end
  
    it "renders board position numbers" do    
      board_template = Views::TemplateBoard.new @a_board
      board_template.template = "{{#positions}}{{number}}. {{name}} \n{{/positions}}"
      board_template.add_index_positions
      result_doc = "1. Go \n2. Old Kent Road \n3. Community Chest \n4. Whitechapel Road \n"        
      
      board_template.render.should.equal result_doc
    end
    
    #it "renders players positions" do
    #  
    #end
  end
end
