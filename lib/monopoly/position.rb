class Position
  # Factory
  def Position.create_batch blueprints
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
  
  def to_s
    self.name
  end
  
end