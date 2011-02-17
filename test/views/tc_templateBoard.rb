require 'monopoly/models/board'
require 'monopoly/views/templateBoard'
require 'monopoly/models/player'
require 'mustache'

module Monopoly
  
  describe "A board template generator" do
    
    before do
      @a_board = Models::Board.create 'positions_test.yml'
            
    end

 
    it "renders board position names" do             
      a_board_template = Views::TemplateBoard.new @a_board
      a_board_template.template = "{{#positions}} \n{{name}} \n{{/positions}}" 
      result_doc = "Go \nOld Kent Road \nCommunity Chest \nWhitechapel Road \n"
  
      a_board_template.render.should.equal result_doc
     
    end
  
    it "renders board position numbers" do    
      board_template = Views::TemplateBoard.new @a_board
      board_template.template = "{{#positions}}{{index}}. {{name}} \n{{/positions}}"
      board_template.add_index_positions
      result_doc = "1. Go \n2. Old Kent Road \n3. Community Chest \n4. Whitechapel Road \n"        
      
      board_template.render.should.equal result_doc
    end
    
    #it "renders players positions" do    
    #  players = []
    #  players << Models::Player.new("player one")
    #  players << Models::Player.new("player_two")
    #  players.each { |player| @a_board.place player }
    #  
    #  players_template = Views::TemplateBoard.new players
    #  
    #  players_template.template = "{{#players}}Position {{position}}. {{player}} \n{{/players}}"
    #  result_doc = "1. Go \n2. Old Kent Road \n3. Community Chest \n4. Whitechapel Road \n"
    #  
    #  players_template.render.should.equal result_doc
    #  
    #end
  end
end
