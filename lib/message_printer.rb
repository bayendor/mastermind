class MessagePrinter
  def intro
    puts "Welcome to Mastermind."
    program_instructions
  end

  def program_instructions
    puts "Would you like to (p)lay, read the (i)nstructions, or (q)uit?"
  end

  def command_request
    print "Enter your command: "
  end

  def game_instructions
    puts "Game instructions."
  end

  def ending
    puts "Good bye."
  end

  def game_intro
    puts "I have generated a beginner sequence with four elements made up of:"
    puts "(r)ed, (g)reen, (b)lue, and (y)ellow. Use (q)uit at any time to end the game."
  end

  def turn_indicator(turns)
    puts "This is turn #{turns}."
  end

  def game_command_request
    print "Enter your guess: "
  end

  def game_quit
    puts "Exiting the game."
    program_instructions
  end

  def game_win
    puts "You win."
    program_instructions
  end

  def not_a_valid_command
    puts "That's not a valid command."
    program_instructions
  end
end
