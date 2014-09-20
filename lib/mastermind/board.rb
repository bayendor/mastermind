class Board
  require 'SecureRandom'

  attr_reader :board, :row, :code

  def initialize
    @board = []
    @row = [0,0,0,0]
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
    4.times do
      @code << SecureRandom.random_number(6) + 1
    end
  end
end

if __FILE__ == $0
  board = Board.new
  board.empty_board
  board.print_board

  board.create_code
  puts "Code is set to #{board.code.to_s}"
end

