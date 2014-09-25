class GuessChecker
  attr_reader :guess, :code

  def initialize(code, guess)
    @code = code
    @guess = guess
  end

  def color_and_position
    guess.split('').each_with_index.count do |color, position|
      color == code[position]
    end
  end

  def color_only
    working_code_copy = code.dup
    counter = 0
    guess.split('').each do |color|
      if working_code_copy.include?(color)
        counter += 1
        index = working_code_copy.index(color)
        working_code_copy.delete_at(index)
      end
    end
    counter
  end
end
