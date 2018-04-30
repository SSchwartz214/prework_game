class Game
  attr_reader :answer

  def initialize
    @answer = rand(0..100)
  end

  def get_guess
    gets.chomp
  end

  def hint
    if answer % 5 == 0
      puts "The number is divisible by 5"
    else
      puts "The number is not divisible by 5"
    end
  end

  def run_game
    puts """
          I have generated a random number for you to guess, what is your guess?
          You may also type 'hint' to receive a hint or 'cheat' to receive the
          answer.
          """
    guess = get_guess
    until guess.to_i == answer
      if guess == "cheat"
        puts "You give up already? The answer is #{answer}"
      elsif guess == "hint"
        puts "Here's your hint:"
          hint
      elsif guess.to_i < answer.to_i
        puts "Your guess is lower than the random number, guess again"
      elsif guess.to_i > answer.to_i
        puts "Your guess is higher than the random number, guess again"
      end
      puts "Guess again"
      guess = get_guess
    end
    puts "You guessed the right number!"
  end
end
