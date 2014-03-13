require "player"
require "board"

describe Player do
  
  let(:player) {Player.new("Laura")}

  it "should initialize with a name" do
  	expect(player.name).to eq "Laura"  	
  end

  it "should know that there are still ships that are not hit" do
  	expect(player.afloat).to eq true
  end


end



  # Tells us if there are still ships that have not been hit
  # on her/his board.

  # Shoots at the opponents board.