# Simple die roll method
def roll_dice
  1 + rand(6)
end

class Player
  attr_reader :name, :token

  def initialize name = nil, token = Token.new
    @name = name
    @token = token
  end
  
end