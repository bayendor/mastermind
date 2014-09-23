@code = %w(R R B B)

@guess = 'BGRB'

def color_and_postion?(color, position)
  color == @code[position]
end

def color_only?(color)
  @code.include?(color)
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

evaluate_turn
print_turn_result
