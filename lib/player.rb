require "board"

class Player

  attr_reader :name, :board

  def initialize(name)
    @name = name
    @board = Board.new(self)
  end

  def has_ships_still_floating?
    board.rows.flatten.include?('s')
  end

  def shoot(coordinates, opponent_board)
    opponent_board.register_shot(coordinates)
  end
end