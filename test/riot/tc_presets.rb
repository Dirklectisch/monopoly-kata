require 'monopoly/models/presets'
require 'teststrap'

include Monopoly::Models

context Presets do
  
  context "loads a serialized hash" do
    setup { Presets.load 'positions_uk.yml' }
    asserts_topic.size(40)
  end
  
end