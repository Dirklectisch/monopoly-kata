module Monopoly
  module Models
  
    require 'YAML'

    # Responsible for saving and loading presets
    # key => [*args]

    module Presets

      # Loads a preset from disk
      def Presets.load file
  
        # Define path where presets are stored
        path = ENV['APP_ROOT'] + '/config/'
  
        # Load serialized preset from file
        file = File.open(path + file)
        hash = YAML.load(file)
        file.close

        return hash
      end
  
      #def save as
      #  path = app_path + save_path + as.to_s + ".yaml"
      #  File.open(path, 'w') do |out|
      #    YAML::dump(self, out)
      #  end
      #end
    end 
    
  end # Models
end # Monopoly