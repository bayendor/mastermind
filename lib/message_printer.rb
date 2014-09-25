class MessagePrinter
  def intro
    puts 'Welcome to Mastermind.'
    program_instructions
  end

  def program_instructions
    puts 'Would you like to (p)lay, read the (i)nstructions, or (q)uit?'
  end

  def command_request
    print 'Enter your command: '
  end

  def game_instructions
    puts 'Game instructions.'
  end

  def ending
    puts 'Goodbye.'
  end

  def game_intro
    puts 'I have generated a beginner sequence with four elements made up of:'
    puts '(r)ed, (g)reen, (b)lue, and (y)ellow. Use (q)uit at any time to end the game.'
  end

  def turn_indicator(turns)
    puts "This is turn #{turns}."
  end

  def game_command_request
    print 'Enter your guess: '
  end

  def game_quit
    puts 'Exiting the game.'
    program_instructions
  end

  def turn_result(guess, correct_position, correct_color)
    puts "'#{guess}' has #{correct_color} correct elements with #{correct_position} in the correct position."
  end

  def game_win(code, turns, end_time)
    puts "Congratulations! You guessed the sequence '#{code.join('')}' in #{turns} turns in #{end_time.to_i} seconds."
    program_instructions
  end

  def not_a_valid_command(guess_length)
    case
    when
      guess_length < 4
      puts 'Guess is too short'
    when
      guess_length > 4
      puts 'Guess is too long'
    else
      puts "That's not valid input: (r, y, g, b)."
    end
  end
end
