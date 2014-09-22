class Mastermind
  def initialize
  end

  def clear
    print "\e[2J\e[f"
  end

  def run
    clear
    puts 'Welcome to MASTERMIND'
    puts 'Would you like to (p)lay, read the (i)nstructions, or (q)uit?'
    command = ''
    while command != 'q'
      printf '> '
      command = gets.chomp[0]
      case command
      when 'q'
        puts 'Goodbye!'
      when 'i'
        puts 'print instructions'
      when 'p'
        puts 'play the game'
      else
        puts "Command #{command} not valid"
      end
    end
  end
end

mastermind = Mastermind.new

mastermind.run
