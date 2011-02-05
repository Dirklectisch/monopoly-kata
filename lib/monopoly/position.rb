class Position
  # Factory
  def Position.batch_create blueprints
    blueprints.map { |props| Position.new(*props) }
  end # Returns array of new positions
  
  # Instance 
  attr_reader :name, :numb
  
  def initialize numb = nil, name
    @numb = numb
    @name = name
  end
  
  def to_i
    self.numb    
  end # Returns the number on the board
  
  def place object
    self.objects << object;
  end
  
  def includes? object
    self.objects.include? object
  end

  def objects
    @objects || @objects = []
  end

end