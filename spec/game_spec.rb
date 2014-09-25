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

  it 'it increments the turn counter' do
    game = Game.new
    expect(game.turns).to eq 1
    game.add_turn
    expect(game.turns).to eq 2
  end

  it 'responds to #check_guess' do
    game = Game.new
    expect(game.respond_to?(:check_guess)).to be true
  end

  it 'responds to #valid_turn_input?' do
    game = Game.new
    expect(game.respond_to?(:valid_turn_input?)).to be true
  end


end
