@code = 'BYYY'

@guess = 'RGGG'

def match?
  @code == @guess
end

def number_of_colors
  result = @code.split('').map do |x|
    @guess[x] == @code[x]
  end
end

def white_pegs
  number_of_colors.count(true)
end

def correct_position
  result = []
  x = 0
  4.times do
    result << @code[x].match(@guess[x])
    x += 1
  end
  result
end

def black_pegs
  4 - correct_position.count(nil)
end



match?

number_of_colors

white_pegs

correct_position

black_pegs



