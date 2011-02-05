class Position
  # Factory
  def Position.batch_create blueprints # = {:key => [props]}
    blueprints.each do |key, props|
      blueprints[key] = Position.new(props)
    end
    return blueprints
  end
  
  # Instance 
  attr_reader :name
  
  def initialize name
    @name = name
  end
  
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