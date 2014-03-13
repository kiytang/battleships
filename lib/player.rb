require "board"

class Player

  attr_reader :board

  def initialize(name)
    @name = name
  end

  def name
    @name
  end

  def afloat
    board.rows.flatten.any? {|cell| cell == 's'}      
  end
end