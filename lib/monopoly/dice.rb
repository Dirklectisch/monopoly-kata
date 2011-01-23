class Dice
  # A set of six sided dice
  attr_reader :count, :sides
  
  def initialize amount = 2
    @sides = 6
    @count = amount
  end
  
  def count= i
    @count = i
  end
  
  def range
    #min..max
    (@count)..(@count * @sides)
  end
  
  def roll amount = @count
    amount.times do
      1 + rand(6)
    end
  end
end