class Game
  GAME_COLORS = %w(R Y G B)
  attr_accessor :command, :guess, :code, :printer, :turns, :whites, :blacks

  def initialize(printer = MessagePrinter.new)
    @command = ''
    @guess = ''
    @code = new_code
    @printer = printer
    @turns = 1
  end

  def clear_screen
    print "\e[2J\e[f"
  end

  def play
    clear_screen
    printer.game_intro
    until win? || exit?
      printer.turn_indicator(turns)
      printer.game_command_request
      @command = gets.upcase.strip
      @guess = command
      process_game_turn
    end
  end

  private

  def process_game_turn
    case
    when exit?
      printer.game_quit
    when win?
      printer.game_win
    else valid_turn_input?
      evaluate_turn
      printer.turn_result(guess, whites, blacks)
      add_turn
    end
  end

  def new_code
    4.times.map do
      GAME_COLORS.sample
    end
  end

  def color_only?(color)
    code.include?(color)
  end

  def color_and_position?(color, position)
    color == code[position]
  end

  def evaluate_turn
    @blacks, @whites = 0, 0
    @guess.split('').each_with_index do |color, position|
      if color_and_postion?(color, position)
        @blacks += 1
      elsif color_only?(color)
        @whites += 1
      end
    end
  end

  def add_turn
    @turns += 1
  end

  def win?
    @guess.chars == @code
  end

  def exit?
    command == 'Q' || command == 'QUIT'
  end

  def valid_turn_input?
    @guess == [/[RBYG]/]
  end
end

if __FILE__ == $0
  mastermind = Mastermind.new
  mastermind.run
end
