require 'monopoly/models/board'
require 'monopoly/views/templateBoard'
require 'monopoly/models/game'
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
    
    it "renders players positions" do    
      game = Models::Game.create "Martin", "Bob";
      game.players.each { |player| game.board.place player }
      game_view = Views::ObjectView.new game
      
      game_view.template = "{{#players}}{{position}}. {{name}} \n{{/players}}"
      
      game_view.render.should.include? "Bob" && "Martin" #lousy assertion due to random order
      
    end
    
    it "renders a players position number on the game board" do
      game = Models::Game.create "Martin", "Bob";
      game.board.extend Views::Printable
      game.board.statify_indexes
      game.players.each { |player| game.board.place player }
      
      game_view = Views::ObjectView.new game
      game_view.template = "{{#players}}{{#position}}{{index}}: {{name}}.{{/position}} {{name}} \n{{/players}}"
      
      players_render = Mustache.render game_view.template, game_view.render_context(3)
      players_render.should.include? "1: Go. Bob" && "1: Go. Martin"
       
    end
    
  end
end
