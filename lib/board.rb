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

  # create a new array count
  # go through each row and add any square 
  # that are 's' to the count array'
  def ship_count
    count = []
    @rows.each do |row|
      count << row.count('s')
    end
    count.reduce(:+)
  end


  def translate(coordinates)
    letter_index = coordinates =~/\D/
    letter = coordinates[letter_index].downcase # A
    number_index = coordinates =~/\d/
    number = coordinates[number_index].to_i
    mapping = Hash[('a'..'z').to_a.zip(1..26)]
    first_number = mapping[letter]
    
    array = [number, first_number]  
  end

  def register_shot(coordinates)
    translated = translate(coordinates)
    row = translated.first
    element = translated.last
    if square_at(row, element) == 's'
      @rows[row-1][element-1] = 'x'
    else
      @rows[row-1][element-1] = 'o'     
    end
  end

  def opponent_view
    @rows.map! do |row|
      row.map {|cell| cell == "s" ? cell = nil : cell}
    end
  end

  private

  def air_craft_carrier
    make_ship_square(10,8)
  end

  def battleships
    make_ship_square(8,8)
  end

  def submarine
    make_ship_square(1,2)
  end

  def destroyer
    make_ship_square(6,9)  
  end

  def patrol_boat
    make_ship_square(4,2)
  end

end 

