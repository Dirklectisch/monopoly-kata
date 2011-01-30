require "minitest/autorun"
require_relative "../lib/monopoly"

describe Player do
  
  it "must create an anonymous player" do
    Player.new.must_be_instance_of Player
  end
  
  it "must tell a players name" do
    a_player = Player.new "monopolist"
    a_player.name.must_equal "monopolist"
  end
  
  it "must execute turn movement" do
    a_player = Player.new; his_pawn = a_player.pawn;
    a_player.take_turn;
    his_pawn.position.wont_equal 1
  end
end

