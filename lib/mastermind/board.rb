class Board
  attr_reader :board, :row, :code

  def initialize
    @board = []
    @row = [0, 0, 0, 0]
    @code = []
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

  def create_code
    @code = []
    4.times { @code << rand(1..6) }
    @code
  end
end

if __FILE__ == $0
  board = Board.new
  board.empty_board
  board.print_board

  board.create_code
  print "Code is set to #{board.code}"
end