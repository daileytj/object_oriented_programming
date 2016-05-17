class Move
  VALUES = ['rock', 'paper', 'scissors', 'lizard', 'spock']
  attr_accessor :value

  def initialize(value)
    @value = value
  end

  def rock?
    @value == 'rock'
  end

  def scissors?
    @value == 'scissors'
  end

  def paper?
    @value == 'paper'
  end
  
  def lizard?
    @value == 'lizard'
  end

  def spock?
    @value == 'spock'
  end

#(first == 'rock' && second == 'scissors') ||
#    (first == 'rock' && second == 'lizard') ||
#    (first == 'paper' && second == 'rock') ||
#    (first == 'paper' && second == 'spock') ||
#    (first == 'scissors' && second == 'paper') ||
#    (first == 'scissors' && second == 'lizard') ||
#    (first == 'lizard' && second == 'spock') ||
#    (first == 'lizard' && second == 'paper') ||
#    (first == 'spock' && second == 'scissors') ||
#    (first == 'spock' && second == 'rock')
  def >(other_move)
    (rock? && other_move.scissors?) ||
      (paper? && other_move.rock?) ||
      (scissors? && other_move.paper?)||
      (rock? && other_move.lizard?) ||
      (paper? && other_move.spock?) ||
      (scissors? && other_move.lizard?) ||
      (lizard? && other_move.spock?) ||
      (lizard? && other_move.paper?) ||
      (spock? && other_move.scissors?) ||
      (spock? && other_move.rock?)
  end

  def <(other_move)
    (rock? && other_move.paper?) ||
      (paper? && other_move.scissors?) ||
      (scissors? && other_move.rock?) ||
      (lizard? && other_move.rock?) ||
      (spock? && other_move.paper?) ||
      (lizard? && other_move.scissors?) ||
      (spock? && other_move.lizard?) ||
      (paper? && other_move.lizard?) ||
      (scissors? && other_move.spock?) ||
      (rock? && other_move.spock?)
  end

  def to_s
    @value
  end
end

class Player
  attr_accessor :move, :name, :score

  def initialize
    set_name
    @score = 0
  end
end

class Human < Player
  def set_name
    n = nil
    loop do
      puts "What's your name?"
      n = gets.chomp
      break unless n.empty?
      puts "Sorry, must enter a value"
    end
    self.name = n
  end

  def choose
    choice = nil
    loop do
      puts "Please choose rock, paper, scissors, lizard, or spock:"
      choice = gets.chomp
      break if Move::VALUES.include? choice
      puts "Sorry, invalid choice."
    end
    self.move = Move.new(choice)
  end
end

class Computer < Player
  def set_name
    self.name = ['R2D2', 'Hal', 'Chappie', 'Sonny', 'Number 5'].sample
  end

  def choose
    self.move = Move.new(Move::VALUES.sample)
  end
end

# Game Orchestration Engine
class RPSGame
  attr_accessor :human, :computer

  def initialize
    @human = Human.new
    @computer = Computer.new
  end

  def display_welcome_message
    puts "Welcome to Rock, Paper, Scissors, Lizard, Spock!"
  end

  def display_moves
    puts "#{human.name} chose #{human.move}."
    puts "#{computer.name} chose #{computer.move}."
  end

  def display_scores
    puts "#{human.name} has won #{human.score} games."
    puts "#{computer.name} has won #{computer.score} games."
  end

  def display_winner
    if human.move > computer.move
      puts "#{human.name} won!"
      human.score += 1
    elsif human.move < computer.move
      puts "#{computer.name} won!"
      computer.score += 1
    else
      puts "It's a tie!"
    end
  end

  def display_goodbye_message
    puts "Thanks for playing Rock, Paper, Scissors, Lizard, Spock. Good bye!"
  end

  def play_again?
    answer = nil
    loop do
      puts "Would you like to play again? (y/n)"
      answer = gets.chomp
      break if ['y', 'n'].include? answer.downcase
      puts "Sorry, must be y or n."
    end

    return true if answer == 'y'
  end

  def play
    display_welcome_message

    loop do
      loop do
        human.choose
        computer.choose
        display_moves
        display_winner
        display_scores
        break if human.score == 10 || computer.score == 10     
      end
      break unless play_again?
    end
    display_goodbye_message
  end
end

RPSGame.new.play
