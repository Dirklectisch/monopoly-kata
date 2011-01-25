class Person
  attr_reader :name
  
  def initialize name
    @name = name
  end
  
  #def self.create *names, type
    # Returns an array of new person instances
  #  new_players = []
  #end
  
end

class Player < Person
  attr_reader :token

  def initialize name = nil, token = Token.new
    @token = token
    super name
  end
  
  def turn?
    #Figures out if its the players turn
    #game.round.turn.player == self
    
  end
  
end