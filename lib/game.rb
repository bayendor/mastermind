class Game
  GAME_COLORS = %w(R Y G B)
  attr_accessor :command, :guess, :code, :printer, :turns

  def initialize(printer = MessagePrinter.new)
    @command = ''
    @guess = ''
    @code = nil
    @printer = printer
    @turns = 0
  end

  def clear_screen
    print "\e[2J\e[f"
  end

  def play
    clear_screen
    printer.game_intro
    while @command != 'q'
      printf '(p)lay or (q)uit > '
      @command = gets.chomp[0]
      case @command
      when 'q'
        puts 'Goodbye!'
      when 'i'
        puts 'print instructions'
      when 'p'
        play_game
      else
        puts "Command #{@command} not valid"
      end
    end
  end

  private

  def play_game
    @code = new_code
    1.upto(10) do |i|
      turn(i)
      if win?
        puts "You won in #{i} turns!"
        return
      else
        print_turn_result
      end
    end
    puts 'No more turns'
  end

  def turn(i)
    puts "This is chance #{i} of 10"
    printf "Enter guess > "
    @guess = gets.upcase.strip
    evaluate_turn
  end

  def new_code
    4.times.map do
      GAME_COLORS.sample
    end
  end

  def color_only?(color)
    @code.include?(color)
  end

  def color_and_postion?(color, position)
    color == @code[position]
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

  def print_turn_result
    puts "For testing, code = #{code}"
    puts "'#{@guess}' has:"
    puts "Correct color, wrong position: #{@whites}."
    puts "Correct color, correct position: #{@blacks}."
  end

  def win?
    @guess.chars == @code
  end

  def exit?
    command == 'q' || command == 'quit'
  end

  def valid_input
    @guess == [/[RBYG]/]
  end
end

if __FILE__ == $0
  mastermind = Mastermind.new
  mastermind.run
end
