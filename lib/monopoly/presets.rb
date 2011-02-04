module Preset
  app_path = '../../'  
  save_path = 'data/'
  load_path = 'config/'  
  
  def save as
    path = app_path + save_path + as.to_s + ".yaml"
    File.open(path, 'w') do |out|
      YAML::dump(self, out)
    end
  end
  
end