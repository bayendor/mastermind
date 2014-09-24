require_relative '../lib/guess_checker'

describe 'GuessChecker' do

  it "returns the number of correct color_and_position" do
    code          = %w(R R B B)
    guess         = 'GRGB'
    guess_checker = GuessChecker.new(code, guess)
    expect(guess_checker.color_and_position).to eq(2)
  end

  it "returns the number of correct colors" do
    code          = %w(R R B B)
    guess         = 'BRGB'
    guess_checker = GuessChecker.new(code, guess)
    expect(guess_checker.color_only).to eq(3)
  end

end
