require 'monopoly/models/board'
require 'monopoly/views/templateBoard'
require 'monopoly/models/player'
require 'mustache'

module Monopoly
  
  describe "An ObjectView instance injected with a Board" do
    
    before do
      @a_board = Models::Board.create 'positions_test.yml'
      @board_view = Views::ObjectView.new @a_board
    end

    it "renders a context from the injected board " do
      property_values = {positions: [{index: 1,
                                    name: 'Go'},
                                    {index: 2,
                                    name: 'Old Kent Road'},
                                    {index: 3,
                                    name: 'Community Chest'},
                                    {index: 4,
                                    name: 'Whitechapel Road'} 
                                    ]}
                                    
      @board_view.render_context.should.equal property_values
                                 
    end
 
    it "renders board position names" do             
      @board_view.template = "{{#positions}} \n{{name}} \n{{/positions}}" 
      result_doc = "Go \nOld Kent Road \nCommunity Chest \nWhitechapel Road \n"
  
      @board_view.render.should.equal result_doc
    end
  
    it "renders board position numbers" do    
      @board_view.template = "{{#positions}}{{index}}. {{name}} \n{{/positions}}"
      result_doc = "1. Go \n2. Old Kent Road \n3. Community Chest \n4. Whitechapel Road \n"        
      
      @board_view.render.should.equal result_doc
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
