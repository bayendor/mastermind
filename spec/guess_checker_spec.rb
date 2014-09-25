require_relative '../lib/guess_checker'

describe 'GuessChecker' do

  it 'returns the number of correct color_and_position (0)' do
    code          = %w(R B G Y)
    guess         = 'YRBG'
    guess_checker = GuessChecker.new(code, guess)
    expect(guess_checker.color_and_position).to eq(0)
  end

  it 'returns the number of correct color_and_position (2)' do
    code          = %w(R B G Y)
    guess         = 'RYGG'
    guess_checker = GuessChecker.new(code, guess)
    expect(guess_checker.color_and_position).to eq(2)
  end

  it 'returns the number of correct color_and_position (4)' do
    code          = %w(R B G Y)
    guess         = 'RBGY'
    guess_checker = GuessChecker.new(code, guess)
    expect(guess_checker.color_and_position).to eq(4)
  end

  it 'returns the number of correct colors (3)' do
    code          = %w(R R B B)
    guess         = 'BRGB'
    guess_checker = GuessChecker.new(code, guess)
    expect(guess_checker.color_only).to eq(3)
  end

  it 'returns the number of correct colors (0)' do
    code          = %w(R R R R)
    guess         = 'BBBB'
    guess_checker = GuessChecker.new(code, guess)
    expect(guess_checker.color_only).to eq(0)
  end

  it 'returns the number of correct colors (4)' do
    code          = %w(R B G Y)
    guess         = 'YRBG'
    guess_checker = GuessChecker.new(code, guess)
    expect(guess_checker.color_only).to eq(4)
  end

end
