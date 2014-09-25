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

end
