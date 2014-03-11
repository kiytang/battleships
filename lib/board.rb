class Board

  attr_reader :rows
  
  def initialize(player)
    @player
    #build up multi-dimensional arrays
    @rows = Array.new(10) {Array.new(10)}  
  end

  def make_ship_square(row, element)
    @rows[row-1][element-1] = 's'
  end

  def square_at(row, element)
    @rows[row-1][element-1]
  end

  def add_all_ships
    air_craft_carrier
    battleships
    submarine
    destroyer
    patrol_boat
  end

  def ship_count
    
  end

  def air_craft_carrier
    make_ship_square(10,8)
  end
end 

