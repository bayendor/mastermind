class Game
  GAME_COLORS = %w(R Y G B)
  attr_accessor :command,
                :guess,
                :code,
                :printer,
                :turns,
                :whites,
                :blacks,
                :guess_checker

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
      @guess_checker             = GuessChecker.new(code, guess)
      correct_color              = guess_checker.color_only
      correct_color_and_position = guess_checker.color_and_position
      printer.turn_result(guess, correct_color_and_position, correct_color)
      add_turn
    end
  end

  def new_code
    4.times.map do
      GAME_COLORS.sample
    end
  end

  def add_turn
    @turns += 1
  end

  def win?
    p @guess
    p @code
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
