require 'mastermind/board'

module Mastermind
  describe 'Board' do
    before do
      @board = Board.new
      @code = @board.create_code
    end

    it 'is a Board' do
      expect(@board).to be_a(Board)
    end

    it 'can create an empty board with 12 rows' do
      expect(@board.empty_board).to eq(12)
    end

    it 'can print out an empty board' do
      expect(@board.print_board).to eq([])
    end

    it 'can create 4 digit code in range 1111 - 6666' do
      expect(@code).to be_an(Array)
      expect(@code.length).to eq(4)

     end
  end
end