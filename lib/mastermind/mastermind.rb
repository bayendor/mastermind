class Mastermind
  def initialize
  end

  def run
    puts 'Welcome to MASTERMIND'
    puts 'Would you like to (p)lay, read the (i)nstructions, or (q)uit?'
    command = ''
    while command != 'q'
      printf '> '
      input = gets.chomp
      parts = input.split(' ')
      command = parts[0]
      case command
      when 'q'
        puts 'Goodbye!'
      when 'i'
        #print instructions
      when 'p'
        #play the game
      else
        puts "Sorry, I don't know how to #{command}"
      end
    end
  end
end

mastermind = Mastermind.new

mastermind.run
