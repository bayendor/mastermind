class Game
  attr_reader :code, :guess

  def initialize
    @guess = 'RBGY'
  end

  def create_code(code = 1)
    if code == 1
      @code = ['R','R','B','B']
    else
      colors = %w(R Y G B)
      @code = []
      4.times { @code << colors.sample }
      @code
    end
  end

  def color_only?(color)
    @code.include?(color)
  end

  def color_and_postion?(color, position)
    color == @code[position]
  end

  def evaluate_turn
    @pegs = { black: [], white: [] }
    @guess.split('').each_with_index do |color, position|
      if color_and_postion?(color, position)
        @pegs[:black] << true
      elsif color_only?(color)
        @pegs[:white] << true
      end
    end
    @pegs
  end

  def print_turn_result
    if @pegs[:black].length == 4
      puts 'Win'
    else
      puts "Black Pegs: #{@pegs[:black].count}"
      puts "White Pegs: #{@pegs[:white].count}"
    end
  end
end

