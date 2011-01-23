class Dice
  # A set of six sided dice
  attr_reader :count, :sides
  
  def initialize amount = 2
    @count = amount
    @sides = 6
  end
  
  def count= i
    @count = i
  end
  
  def range
    min = @count
    max = @count * @sides
    min..max
  end
  
  def roll amount = @count
    amount.times do
      1 + rand(6)
    end
  end
  
  def roll_one
    1 + rand(6)
  end
end