require 'game'

module Mastermind

  describe 'Game' do
    before do
      @game = Game.new
      @code = @game.create_code(1)
      @guess = 'RYGB'
    end

    it 'can create a random color code' do
      expect(@code).to be_a(Array)
      expect(@code.length).to eq(4)
      expect(@code.to_s).to match(/[RYGB]/)
    end

    it "returns 'TRUE' if color is correct" do
      expect(@game.color_only?('B')).to be true
    end

    it "returns 'FALSE' if color is incorrect" do
      expect(@game.color_only?('P')).to be false
    end

    it "returns 'TRUE' if color & position are correct" do
      expect(@game.color_and_postion?('R', 0)).to be true
    end

    it "returns 'FALSE' if color & position are incorrect" do
      expect(@game.color_and_postion?('P', 0)).to be false
    end

    it "returns the correct 'pegs' for a given code guess" do
      expect(@game.evaluate_turn).to be_a(Hash)
      expect(@game.evaluate_turn).to eq({:black=>[true], :white=>[true]})
    end
  end
end