require "pry"

require "./smart"

class Game
  def initialize(max, player)
    @max = max
    @player = player
  end

  def activate(computer)
    @computer = computer
  end

  def play
    answer = rand(@max)
    puts "Please guess a number between 1 and #{@max}."
    guess = @player.get_guess(@max)
    puts "They guessed: #{guess}"
    until guess == answer
      sleep 0.25
      if guess > answer
        puts "Too High, guess again."
        @computer.set_lesser_guess
      else
        puts "Too Low, guess again."
        @computer.set_greater_guess
      end
      guess = @player.get_guess(@max)
      puts "They guessed: #{guess}"
    end
    puts "Congratulations."
  end
end
