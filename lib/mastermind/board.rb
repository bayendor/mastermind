class Board
  attr_reader :board, :row, :code

  def initialize
    @board = []
    @row = '____'
    @code = ''
  end

  def empty_board
    10.times do
      @board << row
    end
  end

  def print_board
    @board.each do |row|
      puts row
    end
  end

  def create_code
    colors = %w(R Y G B)
    @code = ''
    4.times { @code << colors.sample }
    @code
  end
end

if __FILE__ == $0
  board = Board.new
  board.empty_board
  board.print_board

  board.create_code
  puts "Code is set to #{board.code}"
end
