require 'cli'
require 'game'
require 'message_printer'

describe 'Game' do
  before do
    @game = CLI.new
    @new_code
  end

  it "#color_only? returns 'true' for correct color" do
    @code = 'RRBB'
    expect(@game.color_only?('R')).to be_true
  end


end
