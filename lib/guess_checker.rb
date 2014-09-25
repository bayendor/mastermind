class GuessChecker
  attr_reader :guess, :code

  def initialize(code, guess)
    @code = code
    @guess = guess.split('')
  end

  def color_and_position
    guess.each_with_index.count do |color, position|
      color == code[position]
    end
  end

  def color_only
    copy = code.dup
    counter = 0
    guess.each do |color|
      if copy.include?(color)
        counter += 1
        index = copy.index(color)
        copy.delete_at(index)
      end
    end
    counter
  end
end
