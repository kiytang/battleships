require "board"

describe Board do

  let(:board) {Board.new("Player1")}

  context "New board" do

	  it "should have 10 rows" do
	  	expect(board.rows.size).to eq 10	
	  end

	  it "should have rows with 10 elements each" do
	 		expect(board.rows.first.count).to eq 10 	
	  end

	  it "should recognise a ship square" do
	  	board.make_ship_square(2,1)
	  	expect(board.square_at(2,1)).to eq 's'
	  end

	  it "should contain 5 ship squares when initialized" do
	  	board.add_all_ships
	  	expect(board.ship_count).to eq 5
	  end
	end

	context "Board functions" do

		# it "can translate Evgeny coordinates to grid coordinates" do
		# 	expect(board.translate("A8")).to eq([8,1])
		# end
	# end

	it "should register a shot if ship present" do
		board.make_ship_square(1,3)
		board.register_shot('C1')
		expect(board.square_at(1,3)).to eq 'x'
	end		
	end
end
