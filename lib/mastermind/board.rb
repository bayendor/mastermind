class Board
  attr_reader :board, :row

  def initialize
    @board = []
    @row = [0,0,0,0]
  end

  def empty_board
    12.times do
      @board << row
    end
  end

  def print_board
    @board.each do |row|
      print row
      puts ''
    end
  end
end

board = Board.new
board.empty_board
board.print_board
