class Position
  # Factory
  def Position.batch_create blueprints # = {:key => [props]}
    #blueprints.each do |key, props|
    #  blueprints[key] = Position.new(props)
    #end
    blueprints.map { |props| Position.new(props) }
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