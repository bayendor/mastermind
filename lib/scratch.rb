
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
    @code.include?(color)                 # => true, false, false
  end

  def color_and_postion?(color, position)
    color == @code[position]               # => true, false, false, false
  end

  def evaluate_turn
    @pegs = { black: [], white: [] }                       # => {:black=>[], :white=>[]}
    @guess.split('').each_with_index do |color, position|  # => ["R", "B", "G", "Y"]
      if color_and_postion?(color, position)               # => true, false, false, false
        @pegs[:black] << true                              # => [true]
      elsif color_only?(color)                             # => true, false, false
        @pegs[:white] << true                              # => [true]
      end                                                  # => [true], [true], nil, nil
    end                                                    # => ["R", "B", "G", "Y"]
    @pegs                                                  # => {:black=>[true], :white=>[true]}
  end

  def print_turn_result
    if @pegs[:black].length == 4                 # => false
      puts 'Win'
    else
      puts "Black Pegs: #{@pegs[:black].count}"  # => nil
      puts "White Pegs: #{@pegs[:white].count}"  # => nil
    end                                          # => nil
  end



if __FILE__ == $0      # => true
  @code = %w(R R B B)  # => ["R", "R", "B", "B"]
  @guess = 'RBGY'      # => "RBGY"
  evaluate_turn        # => {:black=>[true], :white=>[true]}
  print_turn_result    # => nil
end                    # => nil

# >> Black Pegs: 1
# >> White Pegs: 1
