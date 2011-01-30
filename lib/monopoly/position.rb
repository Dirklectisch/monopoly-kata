require 'YAML'

class Position
  
  def self.load path
    YAML.load_file path
  end
  
end

class Position 
  attr_reader :name
  
  def initialize name
    @name = name
  end
  
  def save path
    File.open(path.to_s, 'w') do |out|
      YAML::dump(self, out)
    end
  end

end

