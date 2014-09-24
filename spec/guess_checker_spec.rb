require_relative '../lib/guess_checker'

describe 'GuessChecker' do

  it "returns the number of correct color_and_position" do
    code          = %w(R B G Y)
    guess         = 'YRBG'
    guess_checker = GuessChecker.new(code, guess)
    expect(guess_checker.color_and_position).to eq(0)
  end

  it "returns the number of correct colors" do
    code          = %w(R R B B)
    guess         = 'BRGB'
    guess_checker = GuessChecker.new(code, guess)
    expect(guess_checker.color_only).to eq(3)
  end

  it "returns the number of correct colors" do
    code          = %w(R R R R)
    guess         = 'BBBB'
    guess_checker = GuessChecker.new(code, guess)
    expect(guess_checker.color_only).to eq(0)
  end

  it "returns the number of correct colors" do
    code          = %w(R B G Y)
    guess         = 'YRBG'
    guess_checker = GuessChecker.new(code, guess)
    expect(guess_checker.color_only).to eq(4)
  end

end
