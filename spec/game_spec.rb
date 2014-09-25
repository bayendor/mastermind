require 'game'
require 'message_printer'

describe 'Game' do

  it 'can create a new game code' do
    game = Game.new
    expect(game.code.to_s).to match(/[RBGY]/)
  end

  it 'it correctly sets the turn counter' do
    game = Game.new
    expect(game.turns).to eq 1
  end

  it 'increments the turn counter' do
    game = Game.new
    expect(game.turns).to eq 1
    game.add_turn
    expect(game.turns).to eq 2
  end

  it 'validates correct turn input' do
    game = Game.new
    game.guess = 'RRRR'
    expect(game.valid_turn_input?).to be true
  end

  it 'validates incorrect turn input, too short' do
    game = Game.new
    game.guess = 'RRR'
    expect(game.valid_turn_input?).to be nil
  end

  it 'validates incorrect turn input, too short' do
    game = Game.new
    game.guess = 'RRRBB'
    expect(game.valid_turn_input?).to be false
  end

  it 'validates incorrect turn input, wrong colors' do
    game = Game.new
    game.guess = 'RRRP'
    expect(game.valid_turn_input?).to be nil
  end

  it 'responds to #check_guess' do
    game = Game.new
    expect(game.respond_to?(:check_guess)).to be true
  end

end
