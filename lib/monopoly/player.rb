class Player
  attr_reader :name, :dice, :pawn

  def initialize name = "anon", pawn = Pawn.new; dice = Dice.new
    @name = name
    @pawn = pawn
    @dice = dice
  end
  
  def take_turn
    puts "Player #{name} is at position #{pawn.position}"
    roll = dice.roll #Player rolls dice
    puts "Player rolls #{roll}"
    pawn.move roll #Player moves pawn
    puts "Player moved to position #{pawn.position}"
  end
  
  private
  
  def pawn= new_pawn
    @pawn = new_pawn
  end
  
  def name= new_name
    @name = new_name
  end
end