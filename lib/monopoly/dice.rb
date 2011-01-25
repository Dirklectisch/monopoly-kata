class Dice
  # A set of six sided dice
  attr_reader :amount, :sides, :last_roll
  
  def initialize amount = 2
    @sides = 6
    @amount = amount
  end
  
  def amount= i
    @amount = i
  end
  
  def range
    #min..max
    (@amount)..(@amount * @sides)
  end
  
  def roll
    last_roll = self.dry_roll @amount;
  end
  
  def dry_roll amount = @amount
    amount.times do
      1 + rand(6)
    end
  end
  
  def last_roll= value
    @last_rol = value
  end
end