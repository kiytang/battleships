require "player"
require "board"

describe Player do
  
  let(:player) {Player.new("Laura")}

  it "should initialize with a name" do
  	expect(player.name).to eq "Laura"  	
  end

  it "should know that there are still ships that are not hit" do
  	expect(player.has_ships_still_floating?).to eq true
  end

  it "should be able to shoot at the opponents board" do
    enemy = Player.new('enemy')
    player.shoot([1,1], enemy.board)
    expect(enemy.board.rows.flatter.include?('o')).to eq true
  end
end



  # Tells us if there are still ships that have not been hit
  # on her/his board.

  # Shoots at the opponents board.