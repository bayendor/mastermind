class Board
  attr_reader :board, :row, :code

  def initialize
    @game_board = []
    @row = '____'
    @code = ''
  end

  def empty_board
    10.times do
      @game_board << row
    end
  end

  def print_board
    @game_board.each do |row|
      puts @game_board[row]
    end
  end
end

if __FILE__ == $0
  board = Board.new
  board.empty_board
  board.print_board

  board.create_code
  puts "Code is set to #{board.code}"
end
