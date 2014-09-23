require 'board'

module Mastermind
  describe 'Board' do
    before do
      @board = Board.new
      @code = @board.create_code
    end

    it 'is a Board' do
      expect(@board).to be_a(Board)
    end

    it 'can create an empty board with 10 rows' do
      expect(@board.empty_board).to eq(10)
      # expect(@board).to eq('____')
    end

    it 'can print out an empty board' do
      expect(@board.print_board).to eq([])
    end
  end
end
